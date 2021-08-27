const express = require("express");

const app = express();

app.get("/", (req, res) => {
  res.send("hello");
});

app.get("/test", (req, res) => {
  res.send("test2");
});

app.listen(3000, () => console.log("server run"));
