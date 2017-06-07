/********************************************************************************
** Form generated from reading UI file 'debug_controls.ui'
**
** Created: Sun 8. Dec 19:44:11 2013
**      by: Qt User Interface Compiler version 4.8.4
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_DEBUG_CONTROLS_H
#define UI_DEBUG_CONTROLS_H

#include <QtCore/QVariant>
#include <QtGui/QAction>
#include <QtGui/QApplication>
#include <QtGui/QButtonGroup>
#include <QtGui/QCheckBox>
#include <QtGui/QGroupBox>
#include <QtGui/QHeaderView>
#include <QtGui/QLabel>
#include <QtGui/QLineEdit>
#include <QtGui/QPushButton>
#include <QtGui/QSpinBox>
#include <QtGui/QWidget>

QT_BEGIN_NAMESPACE

class Ui_DebugControls
{
public:
    QGroupBox *commands_group;
    QLineEdit *command_line;
    QPushButton *run_command_button;
    QGroupBox *groupBox;
    QCheckBox *show_original_checkbox;
    QLabel *label;
    QPushButton *load_zelda_button;
    QLabel *sprite_offset_label;
    QSpinBox *render_sprite_spinbox;
    QSpinBox *sprite_pattern_offset_spinbox;
    QPushButton *take_shot_button;

    void setupUi(QWidget *DebugControls)
    {
        if (DebugControls->objectName().isEmpty())
            DebugControls->setObjectName(QString::fromUtf8("DebugControls"));
        DebugControls->resize(371, 281);
        commands_group = new QGroupBox(DebugControls);
        commands_group->setObjectName(QString::fromUtf8("commands_group"));
        commands_group->setGeometry(QRect(10, 10, 351, 51));
        command_line = new QLineEdit(commands_group);
        command_line->setObjectName(QString::fromUtf8("command_line"));
        command_line->setGeometry(QRect(10, 20, 271, 20));
        run_command_button = new QPushButton(commands_group);
        run_command_button->setObjectName(QString::fromUtf8("run_command_button"));
        run_command_button->setGeometry(QRect(290, 20, 51, 23));
        groupBox = new QGroupBox(DebugControls);
        groupBox->setObjectName(QString::fromUtf8("groupBox"));
        groupBox->setGeometry(QRect(10, 80, 351, 141));
        QFont font;
        font.setFamily(QString::fromUtf8("MS Shell Dlg 2"));
        groupBox->setFont(font);
        show_original_checkbox = new QCheckBox(groupBox);
        show_original_checkbox->setObjectName(QString::fromUtf8("show_original_checkbox"));
        show_original_checkbox->setGeometry(QRect(40, 100, 101, 17));
        show_original_checkbox->setLayoutDirection(Qt::RightToLeft);
        label = new QLabel(groupBox);
        label->setObjectName(QString::fromUtf8("label"));
        label->setGeometry(QRect(50, 60, 81, 16));
        load_zelda_button = new QPushButton(groupBox);
        load_zelda_button->setObjectName(QString::fromUtf8("load_zelda_button"));
        load_zelda_button->setGeometry(QRect(240, 20, 81, 23));
        sprite_offset_label = new QLabel(groupBox);
        sprite_offset_label->setObjectName(QString::fromUtf8("sprite_offset_label"));
        sprite_offset_label->setGeometry(QRect(10, 20, 101, 16));
        render_sprite_spinbox = new QSpinBox(groupBox);
        render_sprite_spinbox->setObjectName(QString::fromUtf8("render_sprite_spinbox"));
        render_sprite_spinbox->setGeometry(QRect(130, 60, 42, 22));
        render_sprite_spinbox->setMinimum(-1);
        render_sprite_spinbox->setValue(-1);
        sprite_pattern_offset_spinbox = new QSpinBox(groupBox);
        sprite_pattern_offset_spinbox->setObjectName(QString::fromUtf8("sprite_pattern_offset_spinbox"));
        sprite_pattern_offset_spinbox->setGeometry(QRect(130, 20, 42, 22));
        sprite_pattern_offset_spinbox->setMinimum(-999);
        sprite_pattern_offset_spinbox->setMaximum(999);
        take_shot_button = new QPushButton(groupBox);
        take_shot_button->setObjectName(QString::fromUtf8("take_shot_button"));
        take_shot_button->setGeometry(QRect(240, 50, 75, 23));

        retranslateUi(DebugControls);
        QObject::connect(command_line, SIGNAL(returnPressed()), run_command_button, SLOT(click()));

        QMetaObject::connectSlotsByName(DebugControls);
    } // setupUi

    void retranslateUi(QWidget *DebugControls)
    {
        DebugControls->setWindowTitle(QApplication::translate("DebugControls", "debug controls", 0, QApplication::UnicodeUTF8));
        commands_group->setTitle(QApplication::translate("DebugControls", "command", 0, QApplication::UnicodeUTF8));
        run_command_button->setText(QApplication::translate("DebugControls", "run", 0, QApplication::UnicodeUTF8));
        groupBox->setTitle(QApplication::translate("DebugControls", "misc", 0, QApplication::UnicodeUTF8));
        show_original_checkbox->setText(QApplication::translate("DebugControls", "show original", 0, QApplication::UnicodeUTF8));
        label->setText(QApplication::translate("DebugControls", "render sprite:", 0, QApplication::UnicodeUTF8));
        load_zelda_button->setText(QApplication::translate("DebugControls", "load zelda.nes", 0, QApplication::UnicodeUTF8));
        sprite_offset_label->setText(QApplication::translate("DebugControls", "sprite pattern offset:", 0, QApplication::UnicodeUTF8));
        take_shot_button->setText(QApplication::translate("DebugControls", "screenshot", 0, QApplication::UnicodeUTF8));
    } // retranslateUi

};

namespace Ui {
    class DebugControls: public Ui_DebugControls {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_DEBUG_CONTROLS_H
