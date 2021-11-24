"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
exports.activate = activate;
exports.deactivate = deactivate;

var _vscode = require("vscode");

var _vscode2 = _interopRequireDefault(_vscode);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

function activate(context) {
  var revealMe = _vscode2.default.commands.registerCommand("reveal.file", function () {
    _vscode2.default.commands.executeCommand("workbench.files.action.showActiveFileInExplorer");
  });
  context.subscriptions.push(revealMe);
  console.info("Reveal extensions activated!");
} // The module 'vscode' contains the VS Code extensibility API
// Import the module and reference it with the alias vscode in your code below

function deactivate() {
  console.log("Reveal extension disabled");
}
//# sourceMappingURL=extension.js.map