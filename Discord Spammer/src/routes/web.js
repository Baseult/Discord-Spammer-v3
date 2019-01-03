// Imports
const express = require("express");

const spammer = require("../spammer.js");

// Express router
let router = express.Router();

// GET Attack page
router.get("/", (req, res) => {
    res.render("attack", spammer.get());
});

// GET Settings page
router.get("/settings", (req, res) => {
    res.render("settings", spammer.get());
});

// GET Status page
router.get("/status", (req, res) => {
    res.render("status", spammer.get());
});

// Exports
module.exports = router;