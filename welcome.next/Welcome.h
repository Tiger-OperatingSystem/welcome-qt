#ifndef WELCOME_H
#define WELCOME_H

#include <QMainWindow>
#include <QPushButton>

QT_BEGIN_NAMESPACE
namespace Ui { class Welcome; }
QT_END_NAMESPACE

class Welcome : public QMainWindow
{
    Q_OBJECT

public:
    Welcome(QWidget *parent = nullptr);
    ~Welcome();

private slots:
    void on_categories_currentRowChanged(int currentRow);
    void startTask();
    void openLinks();
    void activateTheme();
    void activateAccentColor();
    void installApp();
    void openLink();

    void on_startUp_clicked(bool checked);

private:
    Ui::Welcome *ui;
    void checkMode();
    void checkColors();

    void setPlasmaTheme();

    QWidget*createButton(QString name, QString icon_, QString checkInstall, QString install, QString remove);
    void fillOfficePage();
    void fillBrowserPage();
    void fillClassPage();
    void fillIAPage();
};
#endif // WELCOME_H
