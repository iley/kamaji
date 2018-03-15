#ifndef PAKET_JEOPARDY_RES

#define PAKET_JEOPARDY_RES

namespace PaketJeopardyRes {

#ifdef RUSSIAN

const char* resetLabel = "Сброс";
const char* startLabel = "Старт";
const char* yesLabel = "Да";
const char* noLabel = "Нет";
const char* undoLabel = "Откат";
const char* numPlayersLabel = "Число игроков";
const char* cancelLabel = "Отмена";
const char* blockedLabel = "%d заблокировано";
const char* readLabel = "Тема %d. Вопрос %d";
const char* timeLabel = "%d с осталось";
const char* playerLabel = "Игрок %d (%d s)";
const char* menuLabel = "Меню";

#else

const char *resetLabel = "Reset";
const char *startLabel = "Start";
const char *yesLabel = "Yes";
const char *noLabel = "No";
const char* undoLabel = "Undo";
const char* numPlayersLabel = "Num players";
const char* cancelLabel = "Cancel";
const char* blockedLabel = "%d blocked";
const char* readLabel = "Round %d. Q %d";
const char* timeLabel = "%d s remaining";
const char* playerLabel = "Player %d (%d s)";
const char* menuLabel = "Menu";

#endif

}

#endif
