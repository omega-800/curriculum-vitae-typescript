require('dotenv').config({path: '/mnt/c/Users/anon/Documents/Code/Web/curriculum-vitae-ts/.env'});
const fs = require('fs');
const { Client } = require("pg");

(async () => {
  try {
    async function run_query(query, dowrite, filename){
      const client = new Client(process.env.DATABASE_URL);
      await client.connect();
        const result = await client.query(query);
        client.end();
        console.log(result);
        if(dowrite){
          fs.writeFile(`/mnt/c/Users/anon/Documents/Code/Web/curriculum-vitae-ts/src/data_import/${filename}.json`, JSON.stringify(result.rows, null, ' '), err => {
            if (err) {
              console.error(err);
            }
          });
        }
        return result.rows;
    }
    let tables = await run_query("SELECT * FROM skill",false,"tablenames");


  } catch (err) {
    console.error("error executing query:", err);
  }
})();