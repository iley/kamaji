#ifndef PAKET_RES

#define PAKET_RES

static const char *emptyLabel = "";
static const char* num2Label = "2";
static const char* num3Label = "3";
static const char* num4Label = "4";
static const char* num5Label = "5";
static const char* num6Label = "6";
static const char* leftLabel = "<";
static const char* rightLabel = ">";

#ifdef RUSSIAN

//Common
static const char* resetLabel = "Сброс";
static const char* startLabel = "Время";
static const char* yesLabel = "Да";
static const char* noLabel = "Нет";
static const char* pendingLabel = "Ожидайте";
static const char* timeLabel = "%d с осталось";
static const char* undoLabel = "Откат";
static const char* numPlayersLabel = "Число игроков";
static const char* cancelLabel = "Отмена";
static const char* menuLabel = "Меню";
static const char* selectLabel = "Выбрать";

//Brain
static const char* readBrainLabel = "Вопрос %d";
static const char* playerBrainLabel = "Команда %d (%d s)";
static const char* falsestartLabel = "Команда %d фальстарт";
static const char* scoreBrainLabel = "Счет %d-%d";
static const char* infoBrainLabel = "Скорость реакции %d.%02d";

//Jeopardy
static const char* blockedLabel = "%d заблокировано";
static const char* readJeopardyLabel = "Тема %d. Вопрос %d";
static const char* playerJeopardyLabel = "Игрок %d (%d s)";

//Select
static const char* jeopardyLabel = "Своя игра";
static const char* brainLabel = "Брейн-ринг";
static const char* modeLabel = "Режим: %s";

#else

//Common
static const char *resetLabel = "Reset";
static const char *startLabel = "Time";
static const char *yesLabel = "Yes";
static const char *noLabel = "No";
static const char* pendingLabel = "Pending";
static const char* timeLabel = "%d s remaining";
static const char* undoLabel = "Undo";
static const char* numPlayersLabel = "Num players";
static const char* cancelLabel = "Cancel";
static const char* menuLabel = "Menu";
static const char* selectLabel = "Select";

//Brain
static const char* readBrainLabel = "Round %d";
static const char* playerBrainLabel = "Team %d (%d s)";
static const char* falsestartLabel = "Team %d f-start";
static const char* scoreBrainLabel = "Score %d-%d";
static const char* infoBrainLabel = "Speed %d.%02d";

//Jeopardy
static const char* blockedLabel = "%d blocked";
static const char* readJeopardyLabel = "Round %d. Q %d";
static const char* playerJeopardyLabel = "Player %d (%d s)";

//Select
static const char* jeopardyLabel = "Jeopardy";
static const char* brainLabel = "Brain";
static const char* modeLabel = "Mode: %s";

#endif

#endif
