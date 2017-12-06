#ifndef PAKET_MENU_H
#define PAKET_MENU_H

class Menu {
public:
    void init(int numOptions, const char** options, int initialOption);
    const char* getCurrentOption();
    const char* getLeftLabel();
    const char* getRightLabel();
    const char* getCenterLabel();
    void toLeft();
    void toRight();

private:
    const char** options;
    int numOptions;
    int currentOption;
};

#endif
