import { Router } from "express";
require('isomorphic-fetch');

async function fetchUser() {
  const response = await fetch('https://api.github.com/users');
  const user = await response.json();
  console.log(user);
}

const api = Router();

api.get("/:username", (request, response) => {
  const { username } = request.params;

  fetchUser();

  response.json({
    data: { username },
  });

  
});

export default api;
