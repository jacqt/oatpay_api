## API

`POST /v1/auth/sign_up`
`/v1/auth/sign_up?society[email]=dvdhsu@gmail.com&society[password]=asdf&society[password_confirmation]=asdf&society[name]=Magdalen Film Society&society[nickname]=mfs`
  * society:
    * email: `string` e.g. "dvdhsu@gmail.com"
    * password: `string` e.g. "asdf"
    * password_confirmation: `string` e.g. "asdf"
    * name: `string` e.g. "Magdalen Film Society"
    * nickname: `string` e.g. "mfs" (optional)

```
{
  "data": {
    "society": {
      "id": 1,
        "name": "Magdalen Film Society",
        "nickname": "mfs",
        "auth_token": "420dcec940078b95008e7b5577dfc9d3cf25a8c46e6e4089ed32033fc24185928f4450266125c3c0f76718f118fd64d4e7dc70e5798de3b05b6f12bb04bf9b9f8b7143a4cb7a30fb83dacd9df87a58faaab9358110b41f1dffa9193425148c7155ffe0181c80d4a7c7fe725e279ee46bbeb6833ae25c698d9dacd5860f445b66e915909ae792cbb654c6aa94d092280fb04ccf4e295ef1313442f9b9d56a844e28c62f612725b56ab51afff3e0e24d93569610824ed333078b432a2138962f2fe712be74a58646b4653d19dcebf14d71317628724a34256a954bad60135ce18e589df748d9d567dbf9165f71d9bf77e8bcf4f21021e8ec700b9d51870b735158",
        "email": "dvdhsu@gmail.com",
        "balance": {
          "balance_cents": 0,
          "balance_formatted": "£0"
        }
    },
      "items": []
  }
}
```

`POST /v1/auth/login`
`localhost:4005/v1/auth/login?email=dvdhsu@gmail.com&password=asdf`
  * email: `string` e.g. "dvdhsu@gmail.com"
  * password: `string` e.g. "asdf"

```
{
  "data": {
    "society": {
      "id": 1,
      "name": "Magdalen Film Society",
      "nickname": "mfs",
      "auth_token": "420dcec940078b95008e7b5577dfc9d3cf25a8c46e6e4089ed32033fc24185928f4450266125c3c0f76718f118fd64d4e7dc70e5798de3b05b6f12bb04bf9b9f8b7143a4cb7a30fb83dacd9df87a58faaab9358110b41f1dffa9193425148c7155ffe0181c80d4a7c7fe725e279ee46bbeb6833ae25c698d9dacd5860f445b66e915909ae792cbb654c6aa94d092280fb04ccf4e295ef1313442f9b9d56a844e28c62f612725b56ab51afff3e0e24d93569610824ed333078b432a2138962f2fe712be74a58646b4653d19dcebf14d71317628724a34256a954bad60135ce18e589df748d9d567dbf9165f71d9bf77e8bcf4f21021e8ec700b9d51870b735158",
      "email": "dvdhsu@gmail.com",
      "balance": {
        "balance_cents": 0,
        "balance_formatted": "£0"
      }
    },
    "items": []
  }
}
```

`POST /v1/auth/login_with_token`
    * email: `string` e.g. "dvdhsu@gmail.com"
    * auth_token: `string` e.g. "3200e94ef5317fc12a743c4e15df07524ab4c03c55008ba65a35d0e351415cf4ed33ea175acbafefb0ef5272d7d1972acec6ceb63623625c22619a128284a23e1d9cd70fc4dbcb9fca5377da07a220aa3c9a3561301f5313fadbd4172581fb3c676b3dfe02f5bf3acaf0ed2e56b4351460c5888b5b06a7797e4c7b2f99cb1678a41738fadbb2c54d95b5a77f8c2b27a657fe907cceab39fc6de011e5adc9483b2f17e478fce2f577c2e1ef3fd855488c3f4eee2f4c27ef4f639344230c5cf8b336e747905b8e4bce8fff91581620a744a359caba9c0093a78f7cffa2e4a8c466c195952afa29e27cde9cd1c5bed54a457e6e9f887b9a538272f0536d67bd60ae",

    ```{
      "data": {
        "society": {
          "id": 1,
            "name": "Magdalen Film Society",
            "nickname": "mfs",
            "auth_token":
              "3200e94ef5317fc12a743c4e15df07524ab4c03c55008ba65a35d0e351415cf4ed33ea175acbafefb0ef5272d7d1972acec6ceb63623625c22619a128284a23e1d9cd70fc4dbcb9fca5377da07a220aa3c9a3561301f5313fadbd4172581fb3c676b3dfe02f5bf3acaf0ed2e56b4351460c5888b5b06a7797e4c7b2f99cb1678a41738fadbb2c54d95b5a77f8c2b27a657fe907cceab39fc6de011e5adc9483b2f17e478fce2f577c2e1ef3fd855488c3f4eee2f4c27ef4f639344230c5cf8b336e747905b8e4bce8fff91581620a744a359caba9c0093a78f7cffa2e4a8c466c195952afa29e27cde9cd1c5bed54a457e6e9f887b9a538272f0536d67bd60ae",
            "email": "dvdhsu@gmail.com"
        },
          "items": []
      }
    }```


`POST /v1/society/`
`localhost:4005/v1/society?email=dvdhsu@gmail.com&auth_token=420dcec940078b95008e7b5577dfc9d3cf25a8c46e6e4089ed32033fc24185928f4450266125c3c0f76718f118fd64d4e7dc70e5798de3b05b6f12bb04bf9b9f8b7143a4cb7a30fb83dacd9df87a58faaab9358110b41f1dffa9193425148c7155ffe0181c80d4a7c7fe725e279ee46bbeb6833ae25c698d9dacd5860f445b66e915909ae792cbb654c6aa94d092280fb04ccf4e295ef1313442f9b9d56a844e28c62f612725b56ab51afff3e0e24d93569610824ed333078b432a2138962f2fe712be74a58646b4653d19dcebf14d71317628724a34256a954bad60135ce18e589df748d9d567dbf9165f71d9bf77e8bcf4f21021e8ec700b9d51870b735158&nickname=mfs&society[name]=The
New Magdalen Film Society`
  * nickname: `string` e.g. "mfs"
  * email: `string` e.g. "dvdhsu@gmail.com"
  * auth_token: `string` e.g.
    "420dcec940078b95008e7b5577dfc9d3cf25a8c46e6e4089ed32033fc24185928f4450266125c3c0f76718f118fd64d4e7dc70e5798de3b05b6f12bb04bf9b9f8b7143a4cb7a30fb83dacd9df87a58faaab9358110b41f1dffa9193425148c7155ffe0181c80d4a7c7fe725e279ee46bbeb6833ae25c698d9dacd5860f445b66e915909ae792cbb654c6aa94d092280fb04ccf4e295ef1313442f9b9d56a844e28c62f612725b56ab51afff3e0e24d93569610824ed333078b432a2138962f2fe712be74a58646b4653d19dcebf14d71317628724a34256a954bad60135ce18e589df748d9d567dbf9165f71d9bf77e8bcf4f21021e8ec700b9d51870b735158",
  * society (omit any parameters you don't wish to update):
    * email: `string` e.g. "dvdhsu@gmail.com"
    * password: `string` e.g. "asdf"
    * password_confirmation: `string` e.g. "asdf"
    * name: `string` e.g. "Magdalen Film Club"
    * nickname: `string` e.g. "mfs" (optional)

```
{
  "data": {
    "society": {
      "id": 1,
      "name": "The New Magdalen Film Society",
      "nickname": "mfs",
      "auth_token": "420dcec940078b95008e7b5577dfc9d3cf25a8c46e6e4089ed32033fc24185928f4450266125c3c0f76718f118fd64d4e7dc70e5798de3b05b6f12bb04bf9b9f8b7143a4cb7a30fb83dacd9df87a58faaab9358110b41f1dffa9193425148c7155ffe0181c80d4a7c7fe725e279ee46bbeb6833ae25c698d9dacd5860f445b66e915909ae792cbb654c6aa94d092280fb04ccf4e295ef1313442f9b9d56a844e28c62f612725b56ab51afff3e0e24d93569610824ed333078b432a2138962f2fe712be74a58646b4653d19dcebf14d71317628724a34256a954bad60135ce18e589df748d9d567dbf9165f71d9bf77e8bcf4f21021e8ec700b9d51870b735158",
      "email": "dvdhsu@gmail.com",
      "balance": {
        "balance_cents": 0,
        "balance_formatted": "£0"
      }
    },
    "items": []
  }
}
```

`GET /v1/society/`
`localhost:4005/v1/society?nickname=mfs`
  * nickname: `string` e.g. "mfs"
  * email (optional -- required to view protected fields, like auth_token and balance): `string` e.g. "dvdhsu@gmail.com"
  * auth_token (same as above): `string e.g. "3200e94ef5317fc12a743c4e15df07524ab4c03c55008ba65a35d0e351415cf4ed33ea175acbafefb0ef5272d7d1972acec6ceb63623625c22619a128284a23e1d9cd70fc4dbcb9fca5377da07a220aa3c9a3561301f5313fadbd4172581fb3c676b3dfe02f5bf3acaf0ed2e56b4351460c5888b5b06a7797e4c7b2f99cb1678a41738fadbb2c54d95b5a77f8c2b27a657fe907cceab39fc6de011e5adc9483b2f17e478fce2f577c2e1ef3fd855488c3f4eee2f4c27ef4f639344230c5cf8b336e747905b8e4bce8fff91581620a744a359caba9c0093a78f7cffa2e4a8c466c195952afa29e27cde9cd1c5bed54a457e6e9f887b9a538272f0536d67bd60ae"

```
{
  "data": {
    "society": {
      "id": 1,
      "name": "The New Magdalen Film Society",
      "nickname": "mfs",
      "auth_token": null,
      "email": "dvdhsu@gmail.com",
      "balance": null
    },
    "items": []
  }
}
```

`POST /v1/request_withdrawal/`
`localhost:4005/v1/request_withdrawal?nickname=mfs`
  * email: `string` e.g. "dvdhsu@gmail.com"
  * auth_token (same as above): `string e.g. "3200e94ef5317fc12a743c4e15df07524ab4c03c55008ba65a35d0e351415cf4ed33ea175acbafefb0ef5272d7d1972acec6ceb63623625c22619a128284a23e1d9cd70fc4dbcb9fca5377da07a220aa3c9a3561301f5313fadbd4172581fb3c676b3dfe02f5bf3acaf0ed2e56b4351460c5888b5b06a7797e4c7b2f99cb1678a41738fadbb2c54d95b5a77f8c2b27a657fe907cceab39fc6de011e5adc9483b2f17e478fce2f577c2e1ef3fd855488c3f4eee2f4c27ef4f639344230c5cf8b336e747905b8e4bce8fff91581620a744a359caba9c0093a78f7cffa2e4a8c466c195952afa29e27cde9cd1c5bed54a457e6e9f887b9a538272f0536d67bd60ae"

```
{
  "status": "success"
}
```

`POST /v1/items/`
`localhost:4005/v1/items?email=dvdhsu@gmail.com&auth_token=420dcec940078b95008e7b5577dfc9d3cf25a8c46e6e4089ed32033fc24185928f4450266125c3c0f76718f118fd64d4e7dc70e5798de3b05b6f12bb04bf9b9f8b7143a4cb7a30fb83dacd9df87a58faaab9358110b41f1dffa9193425148c7155ffe0181c80d4a7c7fe725e279ee46bbeb6833ae25c698d9dacd5860f445b66e915909ae792cbb654c6aa94d092280fb04ccf4e295ef1313442f9b9d56a844e28c62f612725b56ab51afff3e0e24d93569610824ed333078b432a2138962f2fe712be74a58646b4653d19dcebf14d71317628724a34256a954bad60135ce18e589df748d9d567dbf9165f71d9bf77e8bcf4f21021e8ec700b9d51870b735158&nickname=mfs&item[name]=Formal
ticket&item[price]=1300&item[capacity]=20`
  * email: `string` e.g. "dvdhsu@gmail.com"
  * auth_token: `string` e.g.  "420dcec940078b95008e7b5577dfc9d3cf25a8c46e6e4089ed32033fc24185928f4450266125c3c0f76718f118fd64d4e7dc70e5798de3b05b6f12bb04bf9b9f8b7143a4cb7a30fb83dacd9df87a58faaab9358110b41f1dffa9193425148c7155ffe0181c80d4a7c7fe725e279ee46bbeb6833ae25c698d9dacd5860f445b66e915909ae792cbb654c6aa94d092280fb04ccf4e295ef1313442f9b9d56a844e28c62f612725b56ab51afff3e0e24d93569610824ed333078b432a2138962f2fe712be74a58646b4653d19dcebf14d71317628724a34256a954bad60135ce18e589df748d9d567dbf9165f71d9bf77e8bcf4f21021e8ec700b9d51870b735158",
  * item:
    * name: `string` e.g. "Formal ticket"
    * price: `integer` e.g. 1300
    * capacity: `integer` e.g. 20

```
{
  "data": {
    "item": {
      "item": {
        "id": 16,
        "name": "Formal ticket",
        "price": {
          "price": {
            "price_cents": 1300,
            "price_formatted": "£13"
          }
        },
        "archived": false,
        "capacity": 20,
        "payments": [],
        "remaining": 20
      }
    }
  }
}
```

`POST /v1/items/:id`
`localhost:4005/v1/items/16?email=dvdhsu@gmail.com&auth_token=420dcec940078b95008e7b5577dfc9d3cf25a8c46e6e4089ed32033fc24185928f4450266125c3c0f76718f118fd64d4e7dc70e5798de3b05b6f12bb04bf9b9f8b7143a4cb7a30fb83dacd9df87a58faaab9358110b41f1dffa9193425148c7155ffe0181c80d4a7c7fe725e279ee46bbeb6833ae25c698d9dacd5860f445b66e915909ae792cbb654c6aa94d092280fb04ccf4e295ef1313442f9b9d56a844e28c62f612725b56ab51afff3e0e24d93569610824ed333078b432a2138962f2fe712be74a58646b4653d19dcebf14d71317628724a34256a954bad60135ce18e589df748d9d567dbf9165f71d9bf77e8bcf4f21021e8ec700b9d51870b735158&nickname=mfs&item[name]=Formal
ticket&item[price]=1500&item[capacity]=20`
  * email: `string` e.g. "dvdhsu@gmail.com"
  * auth_token: `string` e.g.  "420dcec940078b95008e7b5577dfc9d3cf25a8c46e6e4089ed32033fc24185928f4450266125c3c0f76718f118fd64d4e7dc70e5798de3b05b6f12bb04bf9b9f8b7143a4cb7a30fb83dacd9df87a58faaab9358110b41f1dffa9193425148c7155ffe0181c80d4a7c7fe725e279ee46bbeb6833ae25c698d9dacd5860f445b66e915909ae792cbb654c6aa94d092280fb04ccf4e295ef1313442f9b9d56a844e28c62f612725b56ab51afff3e0e24d93569610824ed333078b432a2138962f2fe712be74a58646b4653d19dcebf14d71317628724a34256a954bad60135ce18e589df748d9d567dbf9165f71d9bf77e8bcf4f21021e8ec700b9d51870b735158",
  * item:
    * name: `string` e.g. "Formal Ticket"
    * price: `integer` e.g. 15
    * capacity: `integer` e.g. 20

```
{
  "data": {
    "item": {
      "item": {
        "id": 16,
        "name": "Formal ticket",
        "price": {
          "price": {
            "price_cents": 1500,
            "price_formatted": "£15"
          }
        },
        "archived": false,
        "capacity": 20,
        "payments": null,
        "remaining": 20
      }
    }
  }
}
```

`DELETE /v1/items/:id`
  * email: `string` e.g. "dvdhsu@gmail.com"
  * auth_token: `string` e.g.
    "420dcec940078b95008e7b5577dfc9d3cf25a8c46e6e4089ed32033fc24185928f4450266125c3c0f76718f118fd64d4e7dc70e5798de3b05b6f12bb04bf9b9f8b7143a4cb7a30fb83dacd9df87a58faaab9358110b41f1dffa9193425148c7155ffe0181c80d4a7c7fe725e279ee46bbeb6833ae25c698d9dacd5860f445b66e915909ae792cbb654c6aa94d092280fb04ccf4e295ef1313442f9b9d56a844e28c62f612725b56ab51afff3e0e24d93569610824ed333078b432a2138962f2fe712be74a58646b4653d19dcebf14d71317628724a34256a954bad60135ce18e589df748d9d567dbf9165f71d9bf77e8bcf4f21021e8ec700b9d51870b735158",

  ```{
    "status": "success"
  }```
