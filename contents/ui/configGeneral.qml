import QtQuick 2.0
import QtQuick.Controls 2.5 as QQC2
import org.kde.kirigami 2.4 as Kirigami
import org.kde.kquickcontrols 2.0 as KQControls
import org.kde.plasma.core 2.0 as PlasmaCore
import QtQuick.Layouts 1.0 as QQLayouts

Kirigami.FormLayout {
    id: generalPage
    signal configurationChanged

    property alias cfg_mediaType: mediaTypeComboBox.currentIndex

    // Media Controls Settings
    property alias cfg_showMediaLogo: showMediaLogoCheckBox.checked
    property alias cfg_showMediaControls: showMediaControlsCheckBox.checked
    property alias cfg_mediaControlSpacing: mediaControlSpacingSpinBox.value
    property alias cfg_mediaControlItemSize: mediaControlItemSizeSpinBox.value
    property alias cfg_mediaControlItemVerticalOffset: mediaControlItemVerticalOffsetSpinBox.value
    property alias cfg_whiteMediaControlIconsChecked: whiteMediaControlIconsChecked.checked
    property alias cfg_hideItemWhenNoControlChecked: hideItemWhenNoControlChecked.checked

    // Lyrics Settings
    property alias cfg_lyricTextSize: lyricTextSizeSpinBox.value 
    property alias cfg_lyricTextColor: lyricTextColorButton.color
    property alias cfg_lyricTextBold: boldButton.checked   
    property alias cfg_lyricTextItalic: italicButton.checked 
    property alias cfg_lyricTextVerticalOffset: lyricTextVerticalOffsetSpinBox.value
    
    // Misc Settings
    property alias cfg_preferredWidgetWidth: preferredWidgetWidthTextField.text

    QQC2.ComboBox {
        id: mediaTypeComboBox
        model: ["Global", "YesPlayMusic", "Spotify"]
        Kirigami.FormData.label: i18n("Media Type: ")
    }

    // Media Controls Settings

    QQC2.CheckBox {
        id: showMediaLogoCheckBox
        Kirigami.FormData.label: i18n("Show Logo: ")
        checkable: true
    }

    QQC2.CheckBox {
        id: showMediaControlsCheckBox
        Kirigami.FormData.label: i18n("Show Media Controls: ")
        checkable: true
    }

    QQC2.CheckBox {
        id: hideItemWhenNoControlChecked
        Kirigami.FormData.label: i18n("Hide Item When No Control: ")
        checkable: true
    }

    QQC2.CheckBox {
        id: whiteMediaControlIconsChecked
        Kirigami.FormData.label: i18n("White Media Control Icons: ")
        checkable: true
    }

    QQC2.SpinBox {
        id: mediaControlSpacingSpinBox
        Kirigami.FormData.label: i18n("Media control items spacing: ")
    }

    QQC2.SpinBox {
        id: mediaControlItemSizeSpinBox
        Kirigami.FormData.label: i18n("Media control items size: ")
    }

    QQC2.SpinBox {
        id: mediaControlItemVerticalOffsetSpinBox
        Kirigami.FormData.label: i18n("Media control items vertical offset: ")
    }

    // Lyrics Settings

    QQC2.SpinBox {
        id: lyricTextSizeSpinBox
        Kirigami.FormData.label: i18n("Lyric text size: ")
    }

    QQC2.SpinBox {
        id: lyricTextVerticalOffsetSpinBox
        Kirigami.FormData.label: i18n("Lyric text vertical offset: ")
    }
    
    QQLayouts.RowLayout {
        Kirigami.FormData.label: i18n("Lyric text color: ")

        KQControls.ColorButton {
            id: lyricTextColorButton
        }

        QQC2.Button {
            id: boldButton
            QQC2.ToolTip {
                text: i18n("Bold text")
            }
            icon.name: "format-text-bold"
            checkable: true
        }

        QQC2.Button {
            id: italicButton
            QQC2.ToolTip {
                text: i18n("Italic text")
            }
            icon.name: "format-text-italic"
            checkable: true
        }
    }

    QQC2.TextField {
        id: preferredWidgetWidthTextField
        Kirigami.FormData.label: i18n("Preferred Widget Width: ")
    }

    // trackName	true	string	Title of the track
    // artistName	true	string	Track's artist name
    // albumName	true	string	Track's album name
    // duration	true	number	Track's duration
    // plainLyrics	true	string	Plain lyrics for the track
    // syncedLyrics	true	string	Synchronized lyrics for the track
}   
