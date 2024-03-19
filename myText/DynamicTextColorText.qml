// DynamicTextColorText.qml
import QtQuick 2.0

Text {
    property string backgroundSource: "" // 绑定到主窗口的背景图片属性
    property int textType: 0 // 新增属性来表示文本类型或标识符

    // 根据backgroundSource和textType决定颜色
    color: {
        if (backgroundSource === "qrc:/desktop/images/background1.jpg") {
            if (textType === 0) return "#8F5937";
            else if (textType === 1) return "#97594E";
            else if (textType === 2) return "#D6A175";
        } else if (backgroundSource === "qrc:/desktop/images/background2.jpg") {
            // 这里根据实际颜色进行替换
            if (textType === 0) return "#颜色1";
            else if (textType === 1) return "#颜色2";
            else if (textType === 2) return "#颜色3";
        }
        return "white"; // 默认颜色
    }

    // 其他Text属性和逻辑...
}
