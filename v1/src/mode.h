#ifndef PAKET_MODE_H
#define PAKET_MODE_H

class Mode {
public:
    virtual void init() = 0;
    virtual bool getLedState(int playerId) = 0;
    virtual const char* getCaption() = 0;
    virtual const char* getLabel(int buttonId) = 0;

    virtual void update() = 0;
};

class JeopardyMode : public Mode {
public:
    virtual void init() override;
    virtual bool getLedState(int playerId) override;
    virtual const char* getCaption() override;
    virtual const char* getLabel(int buttonId) override;

    virtual void update() override;
};

class BrainMode : public Mode {
public:
    virtual void init() override;
    virtual bool getLedState(int playerId) override;
    virtual const char* getCaption() override;
    virtual const char* getLabel(int buttonId) override;

    virtual void update() override;
};

class HamsaMode : public Mode {
public:
    virtual void init() override;
    virtual bool getLedState(int playerId) override;
    virtual const char* getCaption() override;
    virtual const char* getLabel(int buttonId) override;

    virtual void update() override;
};

class SelectMode : public Mode {
public:
    virtual void init() override;
    virtual bool getLedState(int playerId) override;
    virtual const char* getCaption() override;
    virtual const char* getLabel(int buttonId) override;

    virtual void update() override;    
};

#endif
