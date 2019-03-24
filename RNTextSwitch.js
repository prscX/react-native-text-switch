import React, { PureComponent } from "react";
import { StyleSheet, ViewPropTypes, Platform } from "react-native";
import PropTypes from "prop-types";

import { requireNativeComponent } from "react-native";

class RNTextSwitch extends PureComponent {
  _onChange = event => {
    this.props.onChange && this.props.onChange(event.nativeEvent.value);
  };

  render() {
    let {
      backgroundColor,
      selectionBackgroundColor,
      titleColor,
      selectedTitleColor,
      leftTitle,
      rightTitle,
      selectedIndex,
      style
    } = this.props;

    return (
      <TextSwitch
        style={style}
        backgroundColor={backgroundColor}
        selectionBackgroundColor={selectionBackgroundColor}
        titleColor={titleColor}
        selectedTitleColor={selectedTitleColor}
        leftTitle={leftTitle}
        rightTitle={rightTitle}
        selectedIndex={selectedIndex}
        onChange={this._onChange}
      />
    );
  }
}

RNTextSwitch.propTypes = {
  ...ViewPropTypes,

  backgroundColor: PropTypes.string,
  selectionBackgroundColor: PropTypes.string,
  titleColor: PropTypes.string,
  selectedTitleColor: PropTypes.string,
  leftTitle: PropTypes.string,
  rightTitle: PropTypes.string,
  selectedIndex: PropTypes.number
};

RNTextSwitch.defaultProps = {
    backgroundColor: '#DE6840',
    selectionBackgroundColor: '#FFFFFF',
    titleColor: '#FFFFFF',
    selectedTitleColor: '#DE6840',
    leftTitle: 'YES',
    rightTitle: 'NO',
    selectedIndex: 0
};

const TextSwitch = requireNativeComponent("RNTextSwitch", RNTextSwitch, {
  nativeOnly: { onChange: true }
});

export { RNTextSwitch };