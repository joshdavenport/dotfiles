import {nanoid} from "../_snowpack/pkg/nanoid.js";
import React, {useMemo} from "../_snowpack/pkg/react.js";
import FieldWithDescription from "./FieldWithDescription.js";
const Chooser = (props) => {
  const id = useMemo(() => nanoid(), []);
  return /* @__PURE__ */ React.createElement(FieldWithDescription, {
    title: props.title
  }, /* @__PURE__ */ React.createElement("div", {
    className: "flex items-center space-x-2"
  }, /* @__PURE__ */ React.createElement("select", null, props.options.map((o, i) => /* @__PURE__ */ React.createElement("option", {
    key: i,
    value: props.values?.[i] ?? o
  }, o))), /* @__PURE__ */ React.createElement("label", {
    htmlFor: id
  }, props.label)));
};
export default Chooser;
