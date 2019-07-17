## Google Public DNS
```
https://dns.google/resolve?name=npmjs.com&type=A
https://dns.google/resolve?name=npmjs.com&type=MX
https://dns.google/resolve?name=npmjs.com&type=NS
https://dns.google/resolve?name=npmjs.com&type=TXT
```


## _use axios
```
.get("https://dns.google/resolve?name=" + fqdn + "&type=A")
.get("https://dns.google/resolve?name=" + bare_domain + "&type=MX")
.get("https://dns.google/resolve?name=" + bare_domain + "&type=NS")
.get("https://dns.google/resolve?name=" + bare_domain + "&type=TXT")

```

## _
```js
    lookupA: function(fqdn) {
      const vm = this;
      axios
        .get("https://dns.google/resolve?name=" + fqdn + "&type=A")
        .then(function(response) {
          vm.a_records.push({
            name: response.data.Answer[0]["name"],
            data: response.data.Answer[0]["data"]
          });
        });
    },
```