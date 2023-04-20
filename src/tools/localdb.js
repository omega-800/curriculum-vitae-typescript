require('dotenv').config({path: '/mnt/c/Users/anon/Documents/Code/Web/curriculum-vitae-ts/.env'});
const fs = require('fs');
const { Client } = require("pg");

(async () => {
  try {
    async function run_query(query, dowrite, filename){
      const client = new Client({
        host: 'localhost',
        user: 'postgres',
        password: 'root',
        database: 'postgres',
        port:5432
      });
      await client.connect();
        const result = await client.query(query);
        client.end();
        console.log(result);
        if(dowrite){
          fs.writeFile(`C:\\Users\\GeorgiyShevoroshkin\\ownCode\\data_import\\${filename}.json`, JSON.stringify(result.rows, null, ' ').replaceAll('null','""'), err => {
            if (err) {
              console.error(err);
            }
          });
        }
        return result.rows;
    }
    let tables = await run_query("SELECT table_name FROM information_schema.tables WHERE table_schema = 'public'",true,"tablenames");

    tables.forEach(async element => {
      await run_query("SELECT * FROM "+element.table_name, true, element.table_name); 
    });

  } catch (err) {
    console.error("error executing query:", err);
  }
})();