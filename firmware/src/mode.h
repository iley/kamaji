#ifndef PAKET_MODE_H
#define PAKET_MODE_H

class Mode {
public:
    virtual void init() = 0;
    virtual void update() = 0;
    virtual bool getLedState(int playerId) = 0;
    virtual bool getLampState() { return false; }
    virtual void getCaption(char* buffer, size_t bufferSize) = 0;
    virtual void getScore(char* buffer, size_t bufferSize) = 0;
    virtual void getInfo(char* buffer, size_t bufferSize) = 0;
    virtual bool preferShowScore();
    virtual const char* getLabel(int buttonId) = 0;
};

class JeopardyMode : public Mode {
public:
    virtual void init() override;
    virtual void update() override;
    virtual bool getLedState(int playerId) override;
    virtual void getCaption(char* buffer, size_t bufferSize) override;
    virtual void getScore(char* buffer, size_t bufferSize)  override;
    virtual bool preferShowScore() override;
    virtual void getInfo(char* buffer, size_t bufferSize) override;
    virtual const char* getLabel(int buttonId) override;
};

class BrainMode : public Mode {
public:
    virtual void init() override;
    virtual void update() override;
    virtual bool getLedState(int playerId) override;
    virtual bool getLampState() override;
    virtual void getCaption(char* buffer, size_t bufferSize) override;
    virtual void getScore(char* buffer, size_t bufferSize)  override;
    virtual bool preferShowScore() override;
    virtual void getInfo(char* buffer, size_t bufferSize) override;
    virtual const char* getLabel(int buttonId) override;
};

class SelectMode : public Mode {
public:
    virtual void init() override;
    virtual void update() override;
    virtual bool getLedState(int playerId) override;
    virtual void getScore(char* buffer, size_t bufferSize)  override;
    virtual bool preferShowScore() override;
    virtual void getCaption(char* buffer, size_t bufferSize) override;
    virtual void getInfo(char* buffer, size_t bufferSize) override;
    virtual const char* getLabel(int buttonId) override;
};

#endif
