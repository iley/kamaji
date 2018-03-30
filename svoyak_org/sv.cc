#include <algorithm>
#include <string>
#include <vector>
#include <list>
#include <map>
#include <iostream>
#include <sstream>
#include <unordered_map>
#include <fstream>


#define Eo(x) { std::cerr << #x << " = " << (x) << std::endl; }

#define ASSERT(condition) { if(!(condition)){ std::cerr << "ASSERT FAILED: " << #condition << " @ " << __FILE__ << " (" << __LINE__ << ")" << std::endl; } }

template<typename T>
struct my_hash {
  size_t operator()(const std::pair<T, T>& t) const {
    std::hash<T> hash_fn;
    return hash_fn(t.first)*hash_fn(t.second);
  }
};

class table {
 public:
  table(const char* filename) {
    std::fstream in(filename, in.in);
    std::string line;
    std::string token;
    for (int i = 0; std::getline(in, line); ++i) {
      std::stringstream ss(line);
      for (int j = 0; std::getline(ss, token, ','); ++j) {
        if (!token.empty()) {
          set(i, j, token);
        }
      }
    }
    Eo(n);
    Eo(m);
  }
  table() {}
  void out(const char* filename) {
    std::fstream out(filename, out.out);
    for (int i = 0; i < n; ++i) {
      for (int j = 0; j < m; ++j) {
        if (tbl.find(std::make_pair(i, j)) != tbl.end())
          out << tbl[std::make_pair(i,j)];
        out << ",";
      }
      out << std::endl;
    }
  }
  void set(int i, int j, const std::string& s) {
    ASSERT(!s.empty());
    tbl[std::make_pair(i, j)] = s;
    if (n < i + 1)
      n = i + 1;
    if (m < j + 1)
      m = j + 1;
  }
  const std::string& get(int i, int j) {
    return tbl[std::make_pair(i,j)];
  }
  int n = 0, m = 0;
 private:
  std::unordered_map<std::pair<int, int>, std::string, my_hash<int>> tbl;
};

constexpr char room[8][30] = {"Лес", "Малый зал", "6 кабинет", "7 кабинет", "8 кабинет", "10 кабинет", "11 кабинет", "12 кабинет"};
constexpr char start_time[6][10] = {"11:15", "11:45", "12:15", "12:45", "13:15", "13:45"};
constexpr char stage_name[4][50] = {"1/8 финала", "1/4 финала", "Полуфинал", "Финал" };
constexpr char start_fin_time[] = "TODO";

std::string GetBoy(int i, int j) {
  char res[100];
  sprintf(res, "Бой %d;%s;%s", i + 1, room[j], start_time[i]);
  return res;
}

std::string GetFinBoy(int stage, int j) {
  if (stage == 8) stage = 0;
  else if (stage == 4) stage = 1;
  else if (stage == 2) stage = 2;
  else if (stage == 1) stage = 3;
  char res[100];
  sprintf(res, "Бой %s;%s;%s", stage_name[stage], room[j], start_fin_time);
  return res;
}

bool IsValidName(const std::string& name) {
  if (name.empty())
    return false;
  if (name.find("Бой") != std::string::npos)
    return false;
  return true;
}

void GenerateRandomScores(table& otbor) {
  for (int i = 0; i < otbor.n; ++i)
    for (int j = 0; j < otbor.m; ++j)
      if (otbor.get(i,j).find("Бой ") != std::string::npos) {
        for (int t = 1; IsValidName(otbor.get(i+t,j)); ++t)
          otbor.set(i+t, j+1, std::to_string(std::rand()%100));
      }
}

struct Player {
 public:
  Player() {}
  Player(const std::string& _name) {
    name = _name;
  }

  Player& push(int a) {
    res.push_front(a);
    return *this;
  }

  bool operator<(const Player& r) const {
    if (res.size() != r.res.size())
      return res.size() > r.res.size();
    if (res != r.res)
      return res < r.res;
    return name < r.name;
  }

  std::string name;
  std::list<int> res;
};


std::map<std::string, Player> stats;

constexpr int scores[] = {10, 6, 3, 1, 0, 0};

int getpts(int place, int cnt) {
  ASSERT(place + cnt <= 6);
  int sum = 0;
  for (int i = place; i - place < cnt; ++i)
    sum += scores[i];
  return sum*100/cnt;
}

class Game {
 public:
  Game() {}
  void AddPlayer(const std::string& name, int score) {
    parts.push_back(std::make_pair(name, score));
  }
  void CalculateOtbor(std::map<std::string, std::pair<int,int>>& pts) {
    //ASSERT(parts.size() == 4);
    for (int i = 0; i < parts.size(); ++i) {
      int cntmore = 0, cntequal = 0;
      for (int j = 0; j < parts.size(); ++j) {
        if (parts[i].second < parts[j].second)
          ++cntmore;
        if (parts[i].second == parts[j].second)
          ++cntequal;
      }
      pts[parts[i].first].first += getpts(cntmore, cntequal);
      pts[parts[i].first].second += parts[i].second;
    }
    parts.clear();
  }
  void Calculate() {
    ASSERT(parts.size() == 4);
    for (int i = 0; i < parts.size(); ++i) {
      int place = 1;
      for (int j = 0; j < parts.size(); ++j) {
        if (parts[i].second < parts[j].second)
          ++place;
      }
      stats[parts[i].first].push(-parts[i].second).push(place);
    }
    parts.clear();
  }
 private:
  std::vector<std::pair<std::string, int>> parts;
};

std::map<std::string, Player> otbor_res[2];

std::string formatotbor(int tt) {
  char buff[100];
  sprintf(buff, "%d.%02d", tt/100, tt%100);
  return buff;
}

std::map<std::pair<std::string, std::string>, int> meets;
//std::unordered_map<std::pair<std::string, std::string>, int, my_hash<std::string>> meets;

void CalcMeets(table& otbor, int w) {
  for (int i = 0; i < otbor.n; ++i)
    for (int j = 0; j < otbor.m; ++j)
      if (otbor.get(i,j).find("Бой") == 0) {
        std::vector<std::string> game;
        for (int t = 1; IsValidName(otbor.get(i + t, j)); ++t) {
          game.push_back(otbor.get(i + t, j));
        }
        for (int a = 0; a < game.size(); ++a)
          for (int b = 0; b < game.size(); ++b)
            if (a != b)
              meets[std::make_pair(game[a], game[b])] += w;
      }
}

void CalcMeets(const std::vector<std::string> & boy, int w) {
  for (int i = 0; i < boy.size(); ++i)
    for (int j = 0; j < boy.size(); ++j) if (i != j)
      meets[std::make_pair(boy[i], boy[j])] += w;
}

void OutMeets() {
  for (auto it : meets)
    std::cerr << it.first.first << " " << it.first.second << " " << it.second << std::endl;
}

int GetNumberMeets(const std::vector<std::vector<std::string>>& p, int u, int v) {
  int res = 0;
  for (int i = 0; i < p[0].size(); ++i)
    for (int j = u; j < v; ++j)
      for (int k = 0; k < j; ++k) {
        res += meets[std::make_pair(p[k][i], p[j][i])];
      }
  return res;
}

int GetNumberMeets(const std::vector<std::vector<std::string>>& p) {
  int res = 0;
  for (int i = 0; i < p[0].size(); ++i)
    for (int j = 0; j < p.size() && p[j].size() > i; ++j)
      for (int k = 0; k < j; ++k) {
        res += meets[std::make_pair(p[k][i], p[j][i])];
      }
  return res;
}

int GetNumberMeets(const std::vector<std::string>& boy) {
  int res = 0;
  for (int i = 0; i < boy.size(); ++i)
    for (int j = i + 1; j < boy.size(); ++j)
      res += meets[std::make_pair(boy[i], boy[j])];
  return res;
}

table GeneratePoints(table& otbor) {
  std::map<std::string, std::pair<int, int> > pts[2];
  for (int i = 0; i < otbor.n; ++i)
    for (int j = 0; j < otbor.m; ++j) {
      int u;
      if (sscanf(otbor.get(i,j).c_str(),"Бой %d", &u) == 1) {
        --u;
        Game game;
        for (int t = 1; IsValidName(otbor.get(i + t, j)); ++t)
          game.AddPlayer(otbor.get(i+t,j), std::stoi(otbor.get(i+t,j+1)));
        game.CalculateOtbor(pts[u%2]);
      }
    }
  table res_otbor;
  for (int _ = 0; _ < 2; ++_) {
    std::vector<std::pair<int, int> > meat;
    for (const auto& p : pts[_])
      meat.push_back(p.second);
    for (const auto& p : pts[_]) {
      int place = 1;
      for (int i = 0; i < meat.size(); ++i)
        if (meat[i] > p.second)
          ++place;
      stats[p.first].push(-p.second.second).push(-p.second.first).push(place);
      while (!res_otbor.get(place, 0+_*5).empty())
        ++place;
      res_otbor.set(place, 0 + _*5, p.first);
      res_otbor.set(place, 1 + _*5, formatotbor(p.second.first));
      res_otbor.set(place, 2 + _*5, std::to_string(p.second.second));
    }
  }
  return res_otbor;
}

int moves;
bool dfs8(std::vector<std::vector<std::string>>& p, int u, int v, int rem) {
  if (u == 1 && v == 0)
    moves = 0;
  if (u == p.size())
    return true;
  if (v == p[u].size())
    return dfs8(p, u+1, 0, rem);
  for (int i = v; i < p[u].size(); ++i) {
    int cnt = 0;
    for (int k = 0; k < u; ++k) {
      cnt += meets[std::make_pair(p[k][v], p[u][i])];
    }
    if (cnt > rem)
      continue;
    if (v != i) ++moves;
    std::swap(p[u][v], p[u][i]);
    if (dfs8(p, u, v + 1, rem - cnt))
      return true;
    if (v != i) --moves;
    std::swap(p[u][v], p[u][i]);
  }
  return false;
}

table Generate(const std::vector<std::string>& players) {
  ASSERT(players.size()%4==0);
  std::vector<std::vector<std::string>> p;
  p.resize(4);
  int games = players.size()/4;
  p[0].resize(games);
  p[1].resize(games);
  p[2].resize(games);
  p[3].resize(games);
  for (int i = 0; i < games; ++i) {
    p[0][i] = players[i];
    p[1][games-1-i] = players[i+games];
    p[2][i] = players[i+games*2];
    p[3][games-1-i] = players[i+games*3];
  }

  for (int rem = 0; ; ++rem) {
    moves = 0;
    if (dfs8(p, 1, 0, rem)) {
      ASSERT(GetNumberMeets(p, 1, 4) == rem);
      Eo(rem);
      Eo(moves);
      table res;
      std::fstream tg_out("tg.txt", std::fstream::out);
      for (int i = 0; i < games; ++i) {
        res.set(0, i*3, GetFinBoy(games, i));
        res.set(1, i*3, p[0][i]);
        res.set(2, i*3, p[1][i]);
        res.set(3, i*3, p[2][i]);
        res.set(4, i*3, p[3][i]);
        tg_out << GetFinBoy(games, i) << std::endl
               << p[0][i] << std::endl
               << p[1][i] << std::endl
               << p[2][i] << std::endl
               << p[3][i] << std::endl << std::endl;
      }
      return res;
    }
  }
}

bool cmp(const std::string& a, const std::string& b) {
  return stats[a] < stats[b];
}

table GetFin(int games) {
  int n = games * 4;
  std::vector<std::string> meat;
  for (const auto& p : stats)
    meat.push_back(p.first);
  std::sort(meat.begin(), meat.end(), cmp);
  ASSERT(stats[meat[n-1]].res.front() != stats[meat[n]].res.front());
  meat.resize(n);
  return Generate(meat);
}

void CalcGames(table& tbl) {
  for (int i = 0; i < tbl.n; ++i)
    for (int j = 0; j < tbl.m; ++j)
      if (tbl.get(i,j).find("Бой") != std::string::npos) {
        Game game;
        for (int t = 1; t <= 4; ++t)
          game.AddPlayer(tbl.get(i+t,j), std::stoi(tbl.get(i+t,j+1)));
        game.Calculate();
      }
}

constexpr int buttons[] = {6, 6, 6, 6, 5, 5, 5, 5};
constexpr int systems = sizeof(buttons)/sizeof(buttons[0]);
constexpr int MaxBaskets = buttons[0];

/*
void GenRandomBoy(std::vector<std::string> baskets[MaxBaskets],
    std::vector<int> *idx, std::vector<std::string> *names) {
  idx->clear();
  names->clear();
  for (int i = 0; i < MaxBaskets && !baskets[i].empty(); ++i) {
    idx->push_back(std::rand()%baskets[i].size());
    names->push_back(baskets[i][idx->at(i)]);
  }
}
*/

std::vector<std::vector<std::string>> GenRandomOtbor(const std::vector<std::string>& names) {
  std::vector<std::vector<std::string>> baskets;
  baskets.resize(MaxBaskets);
  for (int i = 0; i < names.size(); ++i) {
    baskets[i/systems].push_back(names[i]);
  }
  for (int i = 0; i < MaxBaskets; ++i)
    std::random_shuffle(baskets[i].begin(), baskets[i].end());
  Eo("start dfs");
  ASSERT(dfs8(baskets, 1, 0, 0));
  Eo("finish dfs");
  ASSERT(GetNumberMeets(baskets) == 0);

  std::vector<std::vector<std::string>> result;
  for (int i = 0; i < baskets[0].size(); ++i) {
    std::vector<std::string> game;
    for (int j = 0; j < MaxBaskets && baskets[j].size() > i; ++j)
      game.push_back(std::move(baskets[j][i]));
    if (!game.empty()) {
      CalcMeets(game, 1);
      result.push_back(std::move(game));
    }
  }
  return result;
  /*
  std::vector<int> boy_idx;
  std::vector<std::string> boy_names;

  while (result.size() < systems) {
    while (true) {
      GenRandomBoy(baskets, &boy_idx, &boy_names);
      if (GetNumberMeets(boy_names) == 0) {
        CalcMeets(boy_names, 1);
        result.push_back(std::move(boy_names));
        for (int i = 0; i < boy_idx.size(); ++i) {
          baskets[i].erase(baskets[i].begin() + boy_idx[i]);
        }
        break;
      } else Eo("OOOOOOO");
    }
  }
  return result;
  */
}

constexpr size_t cast_w = 200, size_h = 60;

std::string Pad(size_t width, std::string s) {
  width -= s.size()/2;
  while (width != 0) {
    s.push_back(' ');
    --width;
  }
  return s;
}
void generate_otbor_cast(table& otbor, std::string file_name) {
  FILE* file = fopen(file_name.c_str(), "w+");
  size_t width = cast_w / systems;
  Eo(width);
  for (int i = 0; i < otbor.n; ++i) {
    for (int j = 0; j < otbor.m; ++j) {
      if (otbor.get(i, j).size() > 0) {
        fprintf(file, "%s", Pad(width, otbor.get(i, j).substr(0, 2*width)).c_str());
      }
    }
    fprintf(file, "\n");
  }
  fclose(file);
}

int main(int argc, char* argv[]) {
  Eo(systems);
  if (argc < 2) {
    std::cerr << "Args!!!";
    return 0;
  }
  int n = -1;
  std::srand(2);
  if (std::string("otbor") == argv[1]) {
    std::cerr << "generating otbor" << std::endl;
    std::fstream tg_out("tg.txt", std::fstream::out);
    table t("parts.csv");
    std::vector<std::string> parts[2];
    n = t.n;
    for (int i = 0; i < t.n; ++i) {
      std::string name = t.get(i, 0);
      std::string flag = t.get(i, 1).substr(0,6);
      int where = 0;
      if (flag == "bottom" || parts[0].size() > parts[1].size())
        where = 1;
      if (flag == "bottom") {
        Eo(name);
        Eo(where);
      }
      ASSERT(!name.empty());
      parts[where].push_back(name);
    }
    Eo(parts[0].size());
    Eo(parts[1].size());
    table out;
    const int height = 7;
    const int width = 3;
    int current_row = 0;
    for (int i = 0; i < 3; ++i)
      for (int j = 0; j < 2; ++j, ++current_row) {
        Eo("!!");
        std::vector<std::vector<std::string> > otbor_row = GenRandomOtbor(parts[j]);
        Eo("??");
        for (int game = 0; game < otbor_row.size(); ++game) {
          std::string boy_name = GetBoy(current_row, game);
          out.set(current_row*height, game*width, boy_name);
          tg_out << boy_name << std::endl;
          for (int player = 0; player < otbor_row[game].size(); ++player) {
            std::string player_name = otbor_row[game][player];
            out.set(current_row*height+player+1, game*width, player_name);
            tg_out << player_name << std::endl;
          }
          tg_out << std::endl;
        }
      }
    out.out("otbor_out.csv");
    return 0;
  }

  table otbor("otbor_out.csv");
          GenerateRandomScores(otbor);
          otbor.out("random_scores.csv");

  CalcMeets(otbor,1);
  //OutMeets();
  table otbor_res = GeneratePoints(otbor);
  Eo("generated points");
  if (std::string("calc_otbor") == argv[1]) {
    otbor_res.out("otbor_res.csv");
    table f8 = GetFin(8);
    f8.out("f8.csv");
    return 0;
  }

          table f8_ran("f8.csv");
          GenerateRandomScores(f8_ran);
          f8_ran.out("f8_res.csv");

  table f8("f8_res.csv");
  CalcGames(f8);
  CalcMeets(f8, 2);
  if (std::string("generate_f4") == argv[1]) {
    table f4 = GetFin(4);
    f4.out("f4.csv");
    return 0;
  }
          table f4_ran("f4.csv");
          GenerateRandomScores(f4_ran);
          f4_ran.out("f4_res.csv");

  table f4("f4_res.csv");
  CalcGames(f4);
  CalcMeets(f4, 3);
  if (std::string("generate_f2") == argv[1]) {
    table f2 = GetFin(2);
    f2.out("f2.csv");
    return 0;
  }
  return 0;
}
