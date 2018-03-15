#ifndef PAKET_BRAIN_RES

#define PAKET_BRAIN_RES

namespace PaketBarinRes {

#ifdef RUSSIAN

const char* resetLabel = "Сброс";
const char* startLabel = "Время";
const char* yesLabel = "Да";
const char* noLabel = "Нет";
const char* readLabel = "Вопрос %d";
const char* timeLabel = "%d с осталось";
const char* playerLabel = "Команда %d (%d s)";
const char* falsestartLabel = "Команда %d фальстарт";
const char* pendingLabel = "Ожидайте";
const char* scoreLabel = "Счет %d-%d";

#else

const char *resetLabel = "Reset";
const char *startLabel = "Time";
const char *yesLabel = "Yes";
const char *noLabel = "No";
const char* readLabel = "Round %d";
const char* timeLabel = "%d s remaining";
const char* playerLabel = "Team %d (%d s)";
const char* falsestartLabel = "Team %d f-start";
const char* pendingLabel = "Pending";
const char* scoreLabel = "Score %d-%d";

#endif

}

#endif
