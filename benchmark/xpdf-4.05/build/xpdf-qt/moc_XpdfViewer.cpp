/****************************************************************************
** Meta object code from reading C++ file 'XpdfViewer.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.15.13)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include <memory>
#include "../../xpdf-qt/XpdfViewer.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'XpdfViewer.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.15.13. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_XpdfMenuButton_t {
    QByteArrayData data[3];
    char stringdata0[27];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_XpdfMenuButton_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_XpdfMenuButton_t qt_meta_stringdata_XpdfMenuButton = {
    {
QT_MOC_LITERAL(0, 0, 14), // "XpdfMenuButton"
QT_MOC_LITERAL(1, 15, 10), // "btnPressed"
QT_MOC_LITERAL(2, 26, 0) // ""

    },
    "XpdfMenuButton\0btnPressed\0"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_XpdfMenuButton[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       1,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   19,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void,

       0        // eod
};

void XpdfMenuButton::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<XpdfMenuButton *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->btnPressed(); break;
        default: ;
        }
    }
    (void)_a;
}

QT_INIT_METAOBJECT const QMetaObject XpdfMenuButton::staticMetaObject = { {
    QMetaObject::SuperData::link<QToolButton::staticMetaObject>(),
    qt_meta_stringdata_XpdfMenuButton.data,
    qt_meta_data_XpdfMenuButton,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *XpdfMenuButton::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *XpdfMenuButton::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_XpdfMenuButton.stringdata0))
        return static_cast<void*>(this);
    return QToolButton::qt_metacast(_clname);
}

int XpdfMenuButton::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QToolButton::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 1)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 1;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 1)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 1;
    }
    return _id;
}
struct qt_meta_stringdata_XpdfErrorWindow_t {
    QByteArrayData data[3];
    char stringdata0[33];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_XpdfErrorWindow_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_XpdfErrorWindow_t qt_meta_stringdata_XpdfErrorWindow = {
    {
QT_MOC_LITERAL(0, 0, 15), // "XpdfErrorWindow"
QT_MOC_LITERAL(1, 16, 15), // "clearBtnPressed"
QT_MOC_LITERAL(2, 32, 0) // ""

    },
    "XpdfErrorWindow\0clearBtnPressed\0"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_XpdfErrorWindow[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       1,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   19,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void,

       0        // eod
};

void XpdfErrorWindow::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<XpdfErrorWindow *>(_o);
        (void)_t;
        switch (_id) {
        case 0: _t->clearBtnPressed(); break;
        default: ;
        }
    }
    (void)_a;
}

QT_INIT_METAOBJECT const QMetaObject XpdfErrorWindow::staticMetaObject = { {
    QMetaObject::SuperData::link<QWidget::staticMetaObject>(),
    qt_meta_stringdata_XpdfErrorWindow.data,
    qt_meta_data_XpdfErrorWindow,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *XpdfErrorWindow::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *XpdfErrorWindow::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_XpdfErrorWindow.stringdata0))
        return static_cast<void*>(this);
    return QWidget::qt_metacast(_clname);
}

int XpdfErrorWindow::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 1)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 1;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 1)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 1;
    }
    return _id;
}
struct qt_meta_stringdata_XpdfViewer_t {
    QByteArrayData data[91];
    char stringdata0[1513];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_XpdfViewer_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_XpdfViewer_t qt_meta_stringdata_XpdfViewer = {
    {
QT_MOC_LITERAL(0, 0, 10), // "XpdfViewer"
QT_MOC_LITERAL(1, 11, 5), // "close"
QT_MOC_LITERAL(2, 17, 0), // ""
QT_MOC_LITERAL(3, 18, 22), // "remoteServerConnection"
QT_MOC_LITERAL(4, 41, 16), // "remoteServerRead"
QT_MOC_LITERAL(5, 58, 10), // "pdfResized"
QT_MOC_LITERAL(6, 69, 12), // "pdfPaintDone"
QT_MOC_LITERAL(7, 82, 8), // "finished"
QT_MOC_LITERAL(8, 91, 7), // "preLoad"
QT_MOC_LITERAL(9, 99, 8), // "postLoad"
QT_MOC_LITERAL(10, 108, 8), // "keyPress"
QT_MOC_LITERAL(11, 117, 10), // "QKeyEvent*"
QT_MOC_LITERAL(12, 128, 1), // "e"
QT_MOC_LITERAL(13, 130, 10), // "mousePress"
QT_MOC_LITERAL(14, 141, 12), // "QMouseEvent*"
QT_MOC_LITERAL(15, 154, 12), // "mouseRelease"
QT_MOC_LITERAL(16, 167, 10), // "mouseClick"
QT_MOC_LITERAL(17, 178, 16), // "mouseDoubleClick"
QT_MOC_LITERAL(18, 195, 16), // "mouseTripleClick"
QT_MOC_LITERAL(19, 212, 10), // "mouseWheel"
QT_MOC_LITERAL(20, 223, 12), // "QWheelEvent*"
QT_MOC_LITERAL(21, 236, 9), // "mouseMove"
QT_MOC_LITERAL(22, 246, 10), // "pageChange"
QT_MOC_LITERAL(23, 257, 2), // "pg"
QT_MOC_LITERAL(24, 260, 20), // "sidebarSplitterMoved"
QT_MOC_LITERAL(25, 281, 3), // "pos"
QT_MOC_LITERAL(26, 285, 5), // "index"
QT_MOC_LITERAL(27, 291, 14), // "openMenuAction"
QT_MOC_LITERAL(28, 306, 22), // "openInNewWinMenuAction"
QT_MOC_LITERAL(29, 329, 16), // "reloadMenuAction"
QT_MOC_LITERAL(30, 346, 16), // "saveAsMenuAction"
QT_MOC_LITERAL(31, 363, 21), // "loadSessionMenuAction"
QT_MOC_LITERAL(32, 385, 19), // "saveImageMenuAction"
QT_MOC_LITERAL(33, 405, 14), // "quitMenuAction"
QT_MOC_LITERAL(34, 420, 14), // "copyMenuAction"
QT_MOC_LITERAL(35, 435, 24), // "singlePageModeMenuAction"
QT_MOC_LITERAL(36, 460, 24), // "continuousModeMenuAction"
QT_MOC_LITERAL(37, 485, 30), // "sideBySideSingleModeMenuAction"
QT_MOC_LITERAL(38, 516, 34), // "sideBySideContinuousModeMenuA..."
QT_MOC_LITERAL(39, 551, 34), // "horizontalContinuousModeMenuA..."
QT_MOC_LITERAL(40, 586, 20), // "fullScreenMenuAction"
QT_MOC_LITERAL(41, 607, 7), // "checked"
QT_MOC_LITERAL(42, 615, 25), // "rotateClockwiseMenuAction"
QT_MOC_LITERAL(43, 641, 32), // "rotateCounterclockwiseMenuAction"
QT_MOC_LITERAL(44, 674, 25), // "zoomToSelectionMenuAction"
QT_MOC_LITERAL(45, 700, 23), // "toggleToolbarMenuAction"
QT_MOC_LITERAL(46, 724, 23), // "toggleSidebarMenuAction"
QT_MOC_LITERAL(47, 748, 24), // "viewPageLabelsMenuAction"
QT_MOC_LITERAL(48, 773, 22), // "documentInfoMenuAction"
QT_MOC_LITERAL(49, 796, 16), // "newTabMenuAction"
QT_MOC_LITERAL(50, 813, 19), // "newWindowMenuAction"
QT_MOC_LITERAL(51, 833, 18), // "closeTabMenuAction"
QT_MOC_LITERAL(52, 852, 21), // "closeWindowMenuAction"
QT_MOC_LITERAL(53, 874, 25), // "openErrorWindowMenuAction"
QT_MOC_LITERAL(54, 900, 14), // "helpMenuAction"
QT_MOC_LITERAL(55, 915, 21), // "keyBindingsMenuAction"
QT_MOC_LITERAL(56, 937, 15), // "aboutMenuAction"
QT_MOC_LITERAL(57, 953, 15), // "popupMenuAction"
QT_MOC_LITERAL(58, 969, 3), // "idx"
QT_MOC_LITERAL(59, 973, 26), // "toggleSidebarButtonPressed"
QT_MOC_LITERAL(60, 1000, 17), // "pageNumberChanged"
QT_MOC_LITERAL(61, 1018, 17), // "backButtonPressed"
QT_MOC_LITERAL(62, 1036, 20), // "forwardButtonPressed"
QT_MOC_LITERAL(63, 1057, 20), // "zoomOutButtonPressed"
QT_MOC_LITERAL(64, 1078, 19), // "zoomInButtonPressed"
QT_MOC_LITERAL(65, 1098, 16), // "zoomIndexChanged"
QT_MOC_LITERAL(66, 1115, 19), // "zoomEditingFinished"
QT_MOC_LITERAL(67, 1135, 21), // "fitWidthButtonPressed"
QT_MOC_LITERAL(68, 1157, 20), // "fitPageButtonPressed"
QT_MOC_LITERAL(69, 1178, 23), // "selectModeButtonPressed"
QT_MOC_LITERAL(70, 1202, 22), // "statusIndicatorPressed"
QT_MOC_LITERAL(71, 1225, 15), // "findTextChanged"
QT_MOC_LITERAL(72, 1241, 21), // "findNextButtonPressed"
QT_MOC_LITERAL(73, 1263, 21), // "findPrevButtonPressed"
QT_MOC_LITERAL(74, 1285, 19), // "newTabButtonPressed"
QT_MOC_LITERAL(75, 1305, 9), // "switchTab"
QT_MOC_LITERAL(76, 1315, 16), // "QListWidgetItem*"
QT_MOC_LITERAL(77, 1332, 7), // "current"
QT_MOC_LITERAL(78, 1340, 8), // "previous"
QT_MOC_LITERAL(79, 1349, 13), // "tabsReordered"
QT_MOC_LITERAL(80, 1363, 11), // "QModelIndex"
QT_MOC_LITERAL(81, 1375, 9), // "srcParent"
QT_MOC_LITERAL(82, 1385, 8), // "srcStart"
QT_MOC_LITERAL(83, 1394, 6), // "srcEnd"
QT_MOC_LITERAL(84, 1401, 10), // "destParent"
QT_MOC_LITERAL(85, 1412, 7), // "destRow"
QT_MOC_LITERAL(86, 1420, 19), // "infoComboBoxChanged"
QT_MOC_LITERAL(87, 1440, 18), // "outlineItemClicked"
QT_MOC_LITERAL(88, 1459, 16), // "layerItemClicked"
QT_MOC_LITERAL(89, 1476, 21), // "attachmentSaveClicked"
QT_MOC_LITERAL(90, 1498, 14) // "clearFindError"

    },
    "XpdfViewer\0close\0\0remoteServerConnection\0"
    "remoteServerRead\0pdfResized\0pdfPaintDone\0"
    "finished\0preLoad\0postLoad\0keyPress\0"
    "QKeyEvent*\0e\0mousePress\0QMouseEvent*\0"
    "mouseRelease\0mouseClick\0mouseDoubleClick\0"
    "mouseTripleClick\0mouseWheel\0QWheelEvent*\0"
    "mouseMove\0pageChange\0pg\0sidebarSplitterMoved\0"
    "pos\0index\0openMenuAction\0"
    "openInNewWinMenuAction\0reloadMenuAction\0"
    "saveAsMenuAction\0loadSessionMenuAction\0"
    "saveImageMenuAction\0quitMenuAction\0"
    "copyMenuAction\0singlePageModeMenuAction\0"
    "continuousModeMenuAction\0"
    "sideBySideSingleModeMenuAction\0"
    "sideBySideContinuousModeMenuAction\0"
    "horizontalContinuousModeMenuAction\0"
    "fullScreenMenuAction\0checked\0"
    "rotateClockwiseMenuAction\0"
    "rotateCounterclockwiseMenuAction\0"
    "zoomToSelectionMenuAction\0"
    "toggleToolbarMenuAction\0toggleSidebarMenuAction\0"
    "viewPageLabelsMenuAction\0"
    "documentInfoMenuAction\0newTabMenuAction\0"
    "newWindowMenuAction\0closeTabMenuAction\0"
    "closeWindowMenuAction\0openErrorWindowMenuAction\0"
    "helpMenuAction\0keyBindingsMenuAction\0"
    "aboutMenuAction\0popupMenuAction\0idx\0"
    "toggleSidebarButtonPressed\0pageNumberChanged\0"
    "backButtonPressed\0forwardButtonPressed\0"
    "zoomOutButtonPressed\0zoomInButtonPressed\0"
    "zoomIndexChanged\0zoomEditingFinished\0"
    "fitWidthButtonPressed\0fitPageButtonPressed\0"
    "selectModeButtonPressed\0statusIndicatorPressed\0"
    "findTextChanged\0findNextButtonPressed\0"
    "findPrevButtonPressed\0newTabButtonPressed\0"
    "switchTab\0QListWidgetItem*\0current\0"
    "previous\0tabsReordered\0QModelIndex\0"
    "srcParent\0srcStart\0srcEnd\0destParent\0"
    "destRow\0infoComboBoxChanged\0"
    "outlineItemClicked\0layerItemClicked\0"
    "attachmentSaveClicked\0clearFindError"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_XpdfViewer[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
      70,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,  364,    2, 0x0a /* Public */,
       3,    0,  365,    2, 0x08 /* Private */,
       4,    0,  366,    2, 0x08 /* Private */,
       5,    0,  367,    2, 0x08 /* Private */,
       6,    1,  368,    2, 0x08 /* Private */,
       8,    0,  371,    2, 0x08 /* Private */,
       9,    0,  372,    2, 0x08 /* Private */,
      10,    1,  373,    2, 0x08 /* Private */,
      13,    1,  376,    2, 0x08 /* Private */,
      15,    1,  379,    2, 0x08 /* Private */,
      16,    1,  382,    2, 0x08 /* Private */,
      17,    1,  385,    2, 0x08 /* Private */,
      18,    1,  388,    2, 0x08 /* Private */,
      19,    1,  391,    2, 0x08 /* Private */,
      21,    1,  394,    2, 0x08 /* Private */,
      22,    1,  397,    2, 0x08 /* Private */,
      24,    2,  400,    2, 0x08 /* Private */,
      27,    0,  405,    2, 0x08 /* Private */,
      28,    0,  406,    2, 0x08 /* Private */,
      29,    0,  407,    2, 0x08 /* Private */,
      30,    0,  408,    2, 0x08 /* Private */,
      31,    0,  409,    2, 0x08 /* Private */,
      32,    0,  410,    2, 0x08 /* Private */,
      33,    0,  411,    2, 0x08 /* Private */,
      34,    0,  412,    2, 0x08 /* Private */,
      35,    0,  413,    2, 0x08 /* Private */,
      36,    0,  414,    2, 0x08 /* Private */,
      37,    0,  415,    2, 0x08 /* Private */,
      38,    0,  416,    2, 0x08 /* Private */,
      39,    0,  417,    2, 0x08 /* Private */,
      40,    1,  418,    2, 0x08 /* Private */,
      42,    0,  421,    2, 0x08 /* Private */,
      43,    0,  422,    2, 0x08 /* Private */,
      44,    0,  423,    2, 0x08 /* Private */,
      45,    1,  424,    2, 0x08 /* Private */,
      46,    1,  427,    2, 0x08 /* Private */,
      47,    1,  430,    2, 0x08 /* Private */,
      48,    0,  433,    2, 0x08 /* Private */,
      49,    0,  434,    2, 0x08 /* Private */,
      50,    0,  435,    2, 0x08 /* Private */,
      51,    0,  436,    2, 0x08 /* Private */,
      52,    0,  437,    2, 0x08 /* Private */,
      53,    0,  438,    2, 0x08 /* Private */,
      54,    0,  439,    2, 0x08 /* Private */,
      55,    0,  440,    2, 0x08 /* Private */,
      56,    0,  441,    2, 0x08 /* Private */,
      57,    1,  442,    2, 0x08 /* Private */,
      59,    0,  445,    2, 0x08 /* Private */,
      60,    0,  446,    2, 0x08 /* Private */,
      61,    0,  447,    2, 0x08 /* Private */,
      62,    0,  448,    2, 0x08 /* Private */,
      63,    0,  449,    2, 0x08 /* Private */,
      64,    0,  450,    2, 0x08 /* Private */,
      65,    1,  451,    2, 0x08 /* Private */,
      66,    0,  454,    2, 0x08 /* Private */,
      67,    0,  455,    2, 0x08 /* Private */,
      68,    0,  456,    2, 0x08 /* Private */,
      69,    0,  457,    2, 0x08 /* Private */,
      70,    0,  458,    2, 0x08 /* Private */,
      71,    0,  459,    2, 0x08 /* Private */,
      72,    0,  460,    2, 0x08 /* Private */,
      73,    0,  461,    2, 0x08 /* Private */,
      74,    0,  462,    2, 0x08 /* Private */,
      75,    2,  463,    2, 0x08 /* Private */,
      79,    5,  468,    2, 0x08 /* Private */,
      86,    1,  479,    2, 0x08 /* Private */,
      87,    1,  482,    2, 0x08 /* Private */,
      88,    1,  485,    2, 0x08 /* Private */,
      89,    1,  488,    2, 0x08 /* Private */,
      90,    0,  491,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Bool,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Bool,    7,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 11,   12,
    QMetaType::Void, 0x80000000 | 14,   12,
    QMetaType::Void, 0x80000000 | 14,   12,
    QMetaType::Void, 0x80000000 | 14,   12,
    QMetaType::Void, 0x80000000 | 14,   12,
    QMetaType::Void, 0x80000000 | 14,   12,
    QMetaType::Void, 0x80000000 | 20,   12,
    QMetaType::Void, 0x80000000 | 14,   12,
    QMetaType::Void, QMetaType::Int,   23,
    QMetaType::Void, QMetaType::Int, QMetaType::Int,   25,   26,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Bool,   41,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Bool,   41,
    QMetaType::Void, QMetaType::Bool,   41,
    QMetaType::Void, QMetaType::Bool,   41,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int,   58,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, QMetaType::Int,   58,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void, 0x80000000 | 76, 0x80000000 | 76,   77,   78,
    QMetaType::Void, 0x80000000 | 80, QMetaType::Int, QMetaType::Int, 0x80000000 | 80, QMetaType::Int,   81,   82,   83,   84,   85,
    QMetaType::Void, QMetaType::Int,   58,
    QMetaType::Void, 0x80000000 | 80,   58,
    QMetaType::Void, 0x80000000 | 80,   58,
    QMetaType::Void, QMetaType::Int,   58,
    QMetaType::Void,

       0        // eod
};

void XpdfViewer::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<XpdfViewer *>(_o);
        (void)_t;
        switch (_id) {
        case 0: { bool _r = _t->close();
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = std::move(_r); }  break;
        case 1: _t->remoteServerConnection(); break;
        case 2: _t->remoteServerRead(); break;
        case 3: _t->pdfResized(); break;
        case 4: _t->pdfPaintDone((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 5: _t->preLoad(); break;
        case 6: _t->postLoad(); break;
        case 7: _t->keyPress((*reinterpret_cast< QKeyEvent*(*)>(_a[1]))); break;
        case 8: _t->mousePress((*reinterpret_cast< QMouseEvent*(*)>(_a[1]))); break;
        case 9: _t->mouseRelease((*reinterpret_cast< QMouseEvent*(*)>(_a[1]))); break;
        case 10: _t->mouseClick((*reinterpret_cast< QMouseEvent*(*)>(_a[1]))); break;
        case 11: _t->mouseDoubleClick((*reinterpret_cast< QMouseEvent*(*)>(_a[1]))); break;
        case 12: _t->mouseTripleClick((*reinterpret_cast< QMouseEvent*(*)>(_a[1]))); break;
        case 13: _t->mouseWheel((*reinterpret_cast< QWheelEvent*(*)>(_a[1]))); break;
        case 14: _t->mouseMove((*reinterpret_cast< QMouseEvent*(*)>(_a[1]))); break;
        case 15: _t->pageChange((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 16: _t->sidebarSplitterMoved((*reinterpret_cast< int(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2]))); break;
        case 17: _t->openMenuAction(); break;
        case 18: _t->openInNewWinMenuAction(); break;
        case 19: _t->reloadMenuAction(); break;
        case 20: _t->saveAsMenuAction(); break;
        case 21: _t->loadSessionMenuAction(); break;
        case 22: _t->saveImageMenuAction(); break;
        case 23: _t->quitMenuAction(); break;
        case 24: _t->copyMenuAction(); break;
        case 25: _t->singlePageModeMenuAction(); break;
        case 26: _t->continuousModeMenuAction(); break;
        case 27: _t->sideBySideSingleModeMenuAction(); break;
        case 28: _t->sideBySideContinuousModeMenuAction(); break;
        case 29: _t->horizontalContinuousModeMenuAction(); break;
        case 30: _t->fullScreenMenuAction((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 31: _t->rotateClockwiseMenuAction(); break;
        case 32: _t->rotateCounterclockwiseMenuAction(); break;
        case 33: _t->zoomToSelectionMenuAction(); break;
        case 34: _t->toggleToolbarMenuAction((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 35: _t->toggleSidebarMenuAction((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 36: _t->viewPageLabelsMenuAction((*reinterpret_cast< bool(*)>(_a[1]))); break;
        case 37: _t->documentInfoMenuAction(); break;
        case 38: _t->newTabMenuAction(); break;
        case 39: _t->newWindowMenuAction(); break;
        case 40: _t->closeTabMenuAction(); break;
        case 41: _t->closeWindowMenuAction(); break;
        case 42: _t->openErrorWindowMenuAction(); break;
        case 43: _t->helpMenuAction(); break;
        case 44: _t->keyBindingsMenuAction(); break;
        case 45: _t->aboutMenuAction(); break;
        case 46: _t->popupMenuAction((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 47: _t->toggleSidebarButtonPressed(); break;
        case 48: _t->pageNumberChanged(); break;
        case 49: _t->backButtonPressed(); break;
        case 50: _t->forwardButtonPressed(); break;
        case 51: _t->zoomOutButtonPressed(); break;
        case 52: _t->zoomInButtonPressed(); break;
        case 53: _t->zoomIndexChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 54: _t->zoomEditingFinished(); break;
        case 55: _t->fitWidthButtonPressed(); break;
        case 56: _t->fitPageButtonPressed(); break;
        case 57: _t->selectModeButtonPressed(); break;
        case 58: _t->statusIndicatorPressed(); break;
        case 59: _t->findTextChanged(); break;
        case 60: _t->findNextButtonPressed(); break;
        case 61: _t->findPrevButtonPressed(); break;
        case 62: _t->newTabButtonPressed(); break;
        case 63: _t->switchTab((*reinterpret_cast< QListWidgetItem*(*)>(_a[1])),(*reinterpret_cast< QListWidgetItem*(*)>(_a[2]))); break;
        case 64: _t->tabsReordered((*reinterpret_cast< const QModelIndex(*)>(_a[1])),(*reinterpret_cast< int(*)>(_a[2])),(*reinterpret_cast< int(*)>(_a[3])),(*reinterpret_cast< const QModelIndex(*)>(_a[4])),(*reinterpret_cast< int(*)>(_a[5]))); break;
        case 65: _t->infoComboBoxChanged((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 66: _t->outlineItemClicked((*reinterpret_cast< const QModelIndex(*)>(_a[1]))); break;
        case 67: _t->layerItemClicked((*reinterpret_cast< const QModelIndex(*)>(_a[1]))); break;
        case 68: _t->attachmentSaveClicked((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 69: _t->clearFindError(); break;
        default: ;
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject XpdfViewer::staticMetaObject = { {
    QMetaObject::SuperData::link<QMainWindow::staticMetaObject>(),
    qt_meta_stringdata_XpdfViewer.data,
    qt_meta_data_XpdfViewer,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *XpdfViewer::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *XpdfViewer::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_XpdfViewer.stringdata0))
        return static_cast<void*>(this);
    return QMainWindow::qt_metacast(_clname);
}

int XpdfViewer::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QMainWindow::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 70)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 70;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 70)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 70;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
