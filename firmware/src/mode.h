#ifndef PAKET_MODE_H
#define PAKET_MODE_H

class Mode {
public:
    virtual void init() = 0;
    virtual void update() = 0;
    virtual bool getLedState(int playerId) = 0;
    virtual bool getLampState() { return false; }
    virtual void getCaption(char* buffer, size_t bufferSize, size_t width) = 0;
    virtual void getScore(char* buffer, size_t bufferSize, size_t width) = 0;
    virtual void getInfo(char* buffer, size_t bufferSize, size_t width) = 0;
    virtual bool preferShowScore();
    virtual const char* getLabel(int buttonId) = 0;
    virtual bool isEssential();
};

class JeopardyMode : public Mode {
public:
    virtual void init() override;
    virtual void update() override;
    virtual bool getLedState(int playerId) override;
    virtual void getCaption(char* buffer, size_t bufferSize, size_t width) override;
    virtual void getScore(char* buffer, size_t bufferSize, size_t width)  override;
    virtual bool preferShowScore() override;
    virtual void getInfo(char* buffer, size_t bufferSize, size_t width) override;
    virtual const char* getLabel(int buttonId) override;
    virtual bool isEssential() override;    
};

class BrainMode : public Mode {
public:
    virtual void init() override;
    virtual void update() override;
    virtual bool getLedState(int playerId) override;
    virtual bool getLampState() override;
    virtual void getCaption(char* buffer, size_t bufferSize, size_t width) override;
    virtual void getScore(char* buffer, size_t bufferSize, size_t width)  override;
    virtual bool preferShowScore() override;
    virtual void getInfo(char* buffer, size_t bufferSize, size_t width) override;
    virtual const char* getLabel(int buttonId) override;
    virtual bool isEssential() override;    
};

class SelectMode : public Mode {
public:
    virtual void init() override;
    virtual void update() override;
    virtual bool getLedState(int playerId) override;
    virtual void getScore(char* buffer, size_t bufferSize, size_t width)  override;
    virtual bool preferShowScore() override;
    virtual void getCaption(char* buffer, size_t bufferSize, size_t width) override;
    virtual void getInfo(char* buffer, size_t bufferSize, size_t width) override;
    virtual const char* getLabel(int buttonId) override;
    virtual bool isEssential() override;    
};

#endif
