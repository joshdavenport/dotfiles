import {nanoid} from "../_snowpack/pkg/nanoid.js";
import React, {useMemo} from "../_snowpack/pkg/react.js";
import FieldWithDescription from "./FieldWithDescription.js";
const Toggle = (props) => {
  const id = useMemo(() => nanoid(), []);
  return /* @__PURE__ */ React.createElement(FieldWithDescription, {
    title: props.title
  }, /* @__PURE__ */ React.createElement("div", {
    className: "flex flex-row items-center space-x-2"
  }, /* @__PURE__ */ React.createElement("input", {
    type: "checkbox",
    onChange: props.handleChange,
    checked: props.checked,
    id
  }), /* @__PURE__ */ React.createElement("label", {
    htmlFor: id
  }, props.label)));
};
export default Toggle;
