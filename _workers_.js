addEventListener(
    "fetch", event => {
        let url = new URL(event.request.url);
        url.hostname = "m1.dcdc.eu.org";                        
        url.protocol = "https";
        let request = new Request(url, event.request);
        event.respondWith(
            fetch(request)
        )
    }
)
