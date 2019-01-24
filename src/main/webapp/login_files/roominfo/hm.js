(function () {
    var h = {}, mt = {}, c = {
        id: "814ef98ed9fc41dfe57d70d8a496561d",
        dm: ["dankegongyu.com"],
        js: "tongji.baidu.com/hm-web/js/",
        etrk: [{id: "%23click_submit_order", eventType: "onclick"}],
        icon: '',
        ctrk: false,
        align: -1,
        nv: -1,
        vdur: 1800000,
        age: 31536000000,
        rec: 0,
        rp: [],
        trust: 1,
        vcard: 7444509,
        qiao: 7444509,
        lxb: 7444509,
        kbtrk: 0,
        pt: 0,
        aet: '',
        conv: 0,
        med: 0,
        cvcc: {id: /chat/i, q: /swt|zoos|chat/i},
        cvcf: [],
        apps: ''
    };
    var q = void 0, r = !0, t = null, u = !1;
    mt.cookie = {};
    mt.cookie.set = function (b, a, d) {
        var m;
        d.$ && (m = new Date, m.setTime(m.getTime() + d.$));
        document.cookie = b + "=" + a + (d.domain ? "; domain=" + d.domain : "") + (d.path ? "; path=" + d.path : "") + (m ? "; expires=" + m.toGMTString() : "") + (d.Yb ? "; secure" : "")
    };
    mt.cookie.get = function (b) {
        return (b = RegExp("(^| )" + b + "=([^;]*)(;|$)").exec(document.cookie)) ? b[2] : t
    };
    mt.lang = {};
    mt.lang.e = function (b, a) {
        return "[object " + a + "]" === {}.toString.call(b)
    };
    mt.lang.za = function (b) {
        return mt.lang.e(b, "Number") && isFinite(b)
    };
    mt.lang.ha = function () {
        return mt.lang.e(c.aet, "String")
    };
    mt.lang.i = function (b) {
        return b.replace ? b.replace(/'/g, "'0").replace(/\*/g, "'1").replace(/!/g, "'2") : b
    };
    mt.lang.trim = function (b) {
        return b.replace(/^\s+|\s+$/g, "")
    };
    mt.lang.H = function (b, a) {
        var d = u;
        if (b == t || !mt.lang.e(b, "Array") || a === q) return d;
        if (Array.prototype.indexOf) d = -1 !== b.indexOf(a); else for (var m = 0; m < b.length; m++) if (b[m] === a) {
            d = r;
            break
        }
        return d
    };
    (function () {
        var b = mt.lang;
        mt.d = {};
        mt.d.aa = function (a) {
            return document.getElementById(a)
        };
        mt.d.ea = function (a, d) {
            var m = [], b = [];
            if (!a) return b;
            for (; a.parentNode != t;) {
                for (var k = 0, l = 0, n = a.parentNode.childNodes.length, e = 0; e < n; e++) {
                    var g = a.parentNode.childNodes[e];
                    if (g.nodeName === a.nodeName && (k++, g === a && (l = k), 0 < l && 1 < k)) break
                }
                if ((n = "" !== a.id) && d) {
                    m.unshift("#" + encodeURIComponent(a.id));
                    break
                } else n && (n = "#" + encodeURIComponent(a.id), n = 0 < m.length ? n + ">" + m.join(">") : n, b.push(n)), m.unshift(encodeURIComponent(String(a.nodeName).toLowerCase()) +
                    (1 < k ? "[" + l + "]" : ""));
                a = a.parentNode
            }
            b.push(m.join(">"));
            return b
        };
        mt.d.wa = function (a) {
            return (a = mt.d.ea(a, r)) && a.length ? String(a[0]) : ""
        };
        mt.d.lb = function (a) {
            return mt.d.ea(a, u)
        };
        mt.d.ab = function (a) {
            var d;
            for (d = "A"; (a = a.parentNode) && 1 == a.nodeType;) if (a.tagName == d) return a;
            return t
        };
        mt.d.cb = function (a) {
            return 9 === a.nodeType ? a : a.ownerDocument || a.document
        };
        mt.d.ib = function (a) {
            var d = {top: 0, left: 0};
            if (!a) return d;
            var m = mt.d.cb(a).documentElement;
            "undefined" !== typeof a.getBoundingClientRect && (d = a.getBoundingClientRect());
            return {
                top: d.top + (window.pageYOffset || m.scrollTop) - (m.clientTop || 0),
                left: d.left + (window.pageXOffset || m.scrollLeft) - (m.clientLeft || 0)
            }
        };
        mt.d.getAttribute = function (a, d) {
            var m = a.getAttribute && a.getAttribute(d) || t;
            if (!m && a.attributes && a.attributes.length) for (var b = a.attributes, k = b.length, l = 0; l < k; l++) b[l].nodeName === d && (m = b[l].nodeValue);
            return m
        };
        mt.d.N = function (a) {
            var d = "document";
            a.tagName !== q && (d = a.tagName);
            return d.toLowerCase()
        };
        mt.d.nb = function (a) {
            var d = "";
            a.textContent ? d = b.trim(a.textContent) :
                a.innerText && (d = b.trim(a.innerText));
            d && (d = d.replace(/\s+/g, " ").substring(0, 255));
            return d
        };
        mt.d.eb = function (a) {
            var d = mt.d.N(a);
            "input" === d && ("button" === a.type || "submit" === a.type) ? a = a.value || "" : "img" === d ? (d = mt.d.getAttribute, a = d(a, "alt") || d(a, "title") || d(a, "src")) : a = "body" === d || "html" === d ? ["(hm-default-content-for-", d, ")"].join("") : mt.d.nb(a);
            return String(a).substring(0, 255)
        };
        (function () {
            (mt.d.Ca = function () {
                function a() {
                    if (!a.P) {
                        a.P = r;
                        for (var b = 0, d = f.length; b < d; b++) f[b]()
                    }
                }

                function d() {
                    try {
                        document.documentElement.doScroll("left")
                    } catch (b) {
                        setTimeout(d,
                            1);
                        return
                    }
                    a()
                }

                var b = u, f = [], k;
                document.addEventListener ? k = function () {
                    document.removeEventListener("DOMContentLoaded", k, u);
                    a()
                } : document.attachEvent && (k = function () {
                    "complete" === document.readyState && (document.detachEvent("onreadystatechange", k), a())
                });
                (function () {
                    if (!b) if (b = r, "complete" === document.readyState) a.P = r; else if (document.addEventListener) document.addEventListener("DOMContentLoaded", k, u), window.addEventListener("load", a, u); else if (document.attachEvent) {
                        document.attachEvent("onreadystatechange",
                            k);
                        window.attachEvent("onload", a);
                        var f = u;
                        try {
                            f = window.frameElement == t
                        } catch (n) {
                        }
                        document.documentElement.doScroll && f && d()
                    }
                })();
                return function (b) {
                    a.P ? b() : f.push(b)
                }
            }()).P = u
        })();
        return mt.d
    })();
    mt.event = {};
    mt.event.c = function (b, a, d) {
        b.attachEvent ? b.attachEvent("on" + a, function (a) {
            d.call(b, a)
        }) : b.addEventListener && b.addEventListener(a, d, u)
    };
    mt.event.preventDefault = function (b) {
        b.preventDefault ? b.preventDefault() : b.returnValue = u
    };
    (function () {
        var b = mt.event;
        mt.g = {};
        mt.g.ga = /msie (\d+\.\d+)/i.test(navigator.userAgent);
        mt.g.yb = /msie (\d+\.\d+)/i.test(navigator.userAgent) ? document.documentMode || +RegExp.$1 : q;
        mt.g.cookieEnabled = navigator.cookieEnabled;
        mt.g.javaEnabled = navigator.javaEnabled();
        mt.g.language = navigator.language || navigator.browserLanguage || navigator.systemLanguage || navigator.userLanguage || "";
        mt.g.Gb = (window.screen.width || 0) + "x" + (window.screen.height || 0);
        mt.g.colorDepth = window.screen.colorDepth || 0;
        mt.g.G = function () {
            var a;
            a = a || document;
            return parseInt(window.pageYOffset || a.documentElement.scrollTop || a.body && a.body.scrollTop || 0, 10)
        };
        mt.g.B = function () {
            var a = document;
            return parseInt(window.innerHeight || a.documentElement.clientHeight || a.body && a.body.clientHeight || 0, 10)
        };
        mt.g.orientation = 0;
        (function () {
            function a() {
                var a = 0;
                window.orientation !== q && (a = window.orientation);
                screen && (screen.orientation && screen.orientation.angle !== q) && (a = screen.orientation.angle);
                mt.g.orientation = a
            }

            a();
            b.c(window, "orientationchange", a)
        })();
        return mt.g
    })();
    mt.o = {};
    mt.o.parse = function () {
        return (new Function('return (" + source + ")'))()
    };
    mt.o.stringify = function () {
        function b(a) {
            /["\\\x00-\x1f]/.test(a) && (a = a.replace(/["\\\x00-\x1f]/g, function (a) {
                var b = d[a];
                if (b) return b;
                b = a.charCodeAt();
                return "\\u00" + Math.floor(b / 16).toString(16) + (b % 16).toString(16)
            }));
            return '"' + a + '"'
        }

        function a(a) {
            return 10 > a ? "0" + a : a
        }

        var d = {"\b": "\\b", "\t": "\\t", "\n": "\\n", "\f": "\\f", "\r": "\\r", '"': '\\"', "\\": "\\\\"};
        return function (d) {
            switch (typeof d) {
                case "undefined":
                    return "undefined";
                case "number":
                    return isFinite(d) ? String(d) : "null";
                case "string":
                    return b(d);
                case "boolean":
                    return String(d);
                default:
                    if (d === t) return "null";
                    if (d instanceof Array) {
                        var f = ["["], k = d.length, l, n, e;
                        for (n = 0; n < k; n++) switch (e = d[n], typeof e) {
                            case "undefined":
                            case "function":
                            case "unknown":
                                break;
                            default:
                                l && f.push(","), f.push(mt.o.stringify(e)), l = 1
                        }
                        f.push("]");
                        return f.join("")
                    }
                    if (d instanceof Date) return '"' + d.getFullYear() + "-" + a(d.getMonth() + 1) + "-" + a(d.getDate()) + "T" + a(d.getHours()) + ":" + a(d.getMinutes()) + ":" + a(d.getSeconds()) + '"';
                    l = ["{"];
                    n = mt.o.stringify;
                    for (k in d) if (Object.prototype.hasOwnProperty.call(d, k)) switch (e =
                        d[k], typeof e) {
                        case "undefined":
                        case "unknown":
                        case "function":
                            break;
                        default:
                            f && l.push(","), f = 1, l.push(n(k) + ":" + n(e))
                    }
                    l.push("}");
                    return l.join("")
            }
        }
    }();
    mt.localStorage = {};
    mt.localStorage.U = function () {
        if (!mt.localStorage.k) try {
            mt.localStorage.k = document.createElement("input"), mt.localStorage.k.type = "hidden", mt.localStorage.k.style.display = "none", mt.localStorage.k.addBehavior("#default#userData"), document.getElementsByTagName("head")[0].appendChild(mt.localStorage.k)
        } catch (b) {
            return u
        }
        return r
    };
    mt.localStorage.set = function (b, a, d) {
        var m = new Date;
        m.setTime(m.getTime() + d || 31536E6);
        try {
            window.localStorage ? (a = m.getTime() + "|" + a, window.localStorage.setItem(b, a)) : mt.localStorage.U() && (mt.localStorage.k.expires = m.toUTCString(), mt.localStorage.k.load(document.location.hostname), mt.localStorage.k.setAttribute(b, a), mt.localStorage.k.save(document.location.hostname))
        } catch (f) {
        }
    };
    mt.localStorage.get = function (b) {
        if (window.localStorage) {
            if (b = window.localStorage.getItem(b)) {
                var a = b.indexOf("|"), d = b.substring(0, a) - 0;
                if (d && d > (new Date).getTime()) return b.substring(a + 1)
            }
        } else if (mt.localStorage.U()) try {
            return mt.localStorage.k.load(document.location.hostname), mt.localStorage.k.getAttribute(b)
        } catch (m) {
        }
        return t
    };
    mt.localStorage.remove = function (b) {
        if (window.localStorage) window.localStorage.removeItem(b); else if (mt.localStorage.U()) try {
            mt.localStorage.k.load(document.location.hostname), mt.localStorage.k.removeAttribute(b), mt.localStorage.k.save(document.location.hostname)
        } catch (a) {
        }
    };
    mt.sessionStorage = {};
    mt.sessionStorage.set = function (b, a) {
        if (window.sessionStorage) try {
            window.sessionStorage.setItem(b, a)
        } catch (d) {
        }
    };
    mt.sessionStorage.get = function (b) {
        return window.sessionStorage ? window.sessionStorage.getItem(b) : t
    };
    mt.sessionStorage.remove = function (b) {
        window.sessionStorage && window.sessionStorage.removeItem(b)
    };
    mt.Fa = {};
    mt.Fa.log = function (b, a) {
        var d = new Image, m = "mini_tangram_log_" + Math.floor(2147483648 * Math.random()).toString(36);
        window[m] = d;
        d.onload = d.onerror = d.onabort = function () {
            d.onload = d.onerror = d.onabort = t;
            d = window[m] = t;
            a && a(b)
        };
        d.src = b
    };
    mt.oa = {};
    mt.oa.ob = function () {
        var b = "";
        if (navigator.plugins && navigator.mimeTypes.length) {
            var a = navigator.plugins["Shockwave Flash"];
            a && a.description && (b = a.description.replace(/^.*\s+(\S+)\s+\S+$/, "$1"))
        } else if (window.ActiveXObject) try {
            if (a = new ActiveXObject("ShockwaveFlash.ShockwaveFlash")) (b = a.GetVariable("$version")) && (b = b.replace(/^.*\s+(\d+),(\d+).*$/, "$1.$2"))
        } catch (d) {
        }
        return b
    };
    mt.oa.Vb = function (b, a, d, m, f) {
        return '<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" id="' + b + '" width="' + d + '" height="' + m + '"><param name="movie" value="' + a + '" /><param name="flashvars" value="' + (f || "") + '" /><param name="allowscriptaccess" value="always" /><embed type="application/x-shockwave-flash" name="' + b + '" width="' + d + '" height="' + m + '" src="' + a + '" flashvars="' + (f || "") + '" allowscriptaccess="always" /></object>'
    };
    mt.url = {};
    mt.url.l = function (b, a) {
        var d = b.match(RegExp("(^|&|\\?|#)(" + a + ")=([^&#]*)(&|$|#)", ""));
        return d ? d[3] : t
    };
    mt.url.Wb = function (b) {
        return (b = b.match(/^(https?:)\/\//)) ? b[1] : t
    };
    mt.url.gb = function (b) {
        return (b = b.match(/^(https?:\/\/)?([^\/\?#]*)/)) ? b[2].replace(/.*@/, "") : t
    };
    mt.url.da = function (b) {
        return (b = mt.url.gb(b)) ? b.replace(/:\d+$/, "") : b
    };
    mt.url.ea = function (b) {
        return (b = b.match(/^(https?:\/\/)?[^\/]*(.*)/)) ? b[2].replace(/[\?#].*/, "").replace(/^$/, "/") : t
    };
    (function () {
        function b() {
            for (var a = u, d = document.getElementsByTagName("script"), b = d.length, b = 100 < b ? 100 : b, f = 0; f < b; f++) {
                var k = d[f].src;
                if (k && 0 === k.indexOf("https://hm.baidu.com/h")) {
                    a = r;
                    break
                }
            }
            return a
        }

        return h.$a = b
    })();
    var x = h.$a;
    h.j = {
        xb: "http://tongji.baidu.com/hm-web/welcome/ico",
        ma: "hm.baidu.com/hm.gif",
        Na: "tongji.baidu.com",
        ub: "hmmd",
        vb: "hmpl",
        Rb: "utm_medium",
        tb: "hmkw",
        Tb: "utm_term",
        qb: "hmci",
        Qb: "utm_content",
        wb: "hmsr",
        Sb: "utm_source",
        rb: "hmcu",
        Pb: "utm_campaign",
        C: 0,
        r: Math.round(+new Date / 1E3),
        F: Math.round(+new Date / 1E3) % 65535,
        protocol: "https:" === document.location.protocol ? "https:" : "http:",
        Q: x() || "https:" === document.location.protocol ? "https:" : "http:",
        Xb: 0,
        Ta: 6E5,
        Ab: 6E5,
        Hb: 5E3,
        Ua: 5,
        D: 1024,
        Sa: 1,
        A: 2147483647,
        Ga: "kb cc cf ci ck cl cm cp cu cw ds vl ep et fl ja ln lo lt rnd si su v cv lv api sn ct u tt".split(" "),
        I: r,
        ta: ["a", "input", "button"],
        Pa: {
            id: "data-hm-id",
            X: "data-hm-class",
            qa: "data-hm-xpath",
            content: "data-hm-content",
            T: "data-hm-tag",
            link: "data-hm-link"
        },
        sa: "data-hm-enabled",
        ra: "data-hm-disabled"
    };
    (function () {
        var b = {
            w: {}, c: function (a, b) {
                this.w[a] = this.w[a] || [];
                this.w[a].push(b)
            }, M: function (a, b) {
                this.w[a] = this.w[a] || [];
                for (var m = this.w[a].length, f = 0; f < m; f++) this.w[a][f](b)
            }
        };
        return h.m = b
    })();
    (function () {
        function b(b, m) {
            var f = document.createElement("script");
            f.charset = "utf-8";
            a.e(m, "Function") && (f.readyState ? f.onreadystatechange = function () {
                if ("loaded" === f.readyState || "complete" === f.readyState) f.onreadystatechange = t, m()
            } : f.onload = function () {
                m()
            });
            f.src = b;
            var k = document.getElementsByTagName("script")[0];
            k.parentNode.insertBefore(f, k)
        }

        var a = mt.lang;
        return h.load = b
    })();
    (function () {
        function b() {
            var b = "";
            h.a.b.nv ? (b = encodeURIComponent(document.referrer), window.sessionStorage ? d.set("Hm_from_" + c.id, b) : a.set("Hm_from_" + c.id, b, 864E5)) : b = (window.sessionStorage ? d.get("Hm_from_" + c.id) : a.get("Hm_from_" + c.id)) || "";
            return b
        }

        var a = mt.localStorage, d = mt.sessionStorage;
        return h.ua = b
    })();
    (function () {
        var b = h.j, a = {
            init: function () {
                if ("" !== c.icon) {
                    var a = c.icon.split("|"), m = b.xb + "?s=" + c.id,
                        f = "https://hmcdn.baidu.com/static" + a[0] + ".gif";
                    document.write("swf" === a[1] || "gif" === a[1] ? '<a href="' + m + '" target="_blank"><img border="0" src="' + f + '" width="' + a[2] + '" height="' + a[3] + '"></a>' : '<a href="' + m + '" target="_blank">' + a[0] + "</a>")
                }
            }
        };
        h.m.c("pv-b", a.init);
        return a
    })();
    (function () {
        var b = mt.d, a = mt.event, d = {
            Ia: function () {
                a.c(document, "click", d.L());
                for (var m = c.etrk.length, f = 0; f < m; f++) {
                    var k = c.etrk[f], l = decodeURIComponent(String(k.id));
                    -1 === l.indexOf(">") && (0 === l.indexOf("#") && (l = l.substring(1)), (l = b.aa(decodeURIComponent(l))) && a.c(l, k.eventType, d.Z()))
                }
            }, Z: function () {
                return function (a) {
                    (a.target || a.srcElement).setAttribute("HM_fix", a.clientX + ":" + a.clientY);
                    d.p("#" + encodeURIComponent(this.id), a.type)
                }
            }, L: function () {
                return function (a) {
                    var f = a.target || a.srcElement;
                    if (f) {
                        var k =
                            f.getAttribute("HM_fix");
                        a = a.clientX + ":" + a.clientY;
                        if (k && k == a) f.removeAttribute("HM_fix"); else if (0 < c.etrk.length && (f = b.lb(f)) && f.length) if (k = f.length, a = f[f.length - 1], 1E4 > k * a.split(">").length) for (a = 0; a < k; a++) d.Ea(f[a]); else d.Ea(a)
                    }
                }
            }, Ea: function (a) {
                for (var b = {}, k = String(a).split(">").length, l = 0; l < k; l++) b[a] = "", a = a.substring(0, a.lastIndexOf(">"));
                a = c.etrk.length;
                for (k = 0; k < a; k++) l = decodeURIComponent(String(c.etrk[k].id)), b.hasOwnProperty(l) && d.p(l)
            }, p: function (a, b) {
                h.a.b.et = 1;
                h.a.b.ep = "{id:" + a + ",eventType:" +
                    (b || "click") + "}";
                h.a.h()
            }
        };
        h.m.c("pv-b", d.Ia);
        return d
    })();
    (function () {
        var b = mt.d, a = mt.lang, d = mt.event, m = mt.g, f = h.j, k = h.m, l = [], n = {
            Ha: function () {
                c.ctrk && (d.c(document, "mouseup", n.Ra()), d.c(window, "unload", function () {
                    n.R()
                }), setInterval(function () {
                    n.R()
                }, f.Ta))
            }, Ra: function () {
                return function (a) {
                    a = n.bb(a);
                    if ("" !== a) {
                        var b = (f.Q + "//" + f.ma + "?" + h.a.Da().replace(/ep=[^&]*/, "ep=" + encodeURIComponent(a))).length;
                        b + (f.A + "").length > f.D || (b + encodeURIComponent(l.join("!") + (l.length ? "!" : "")).length + (f.A + "").length > f.D && n.R(), l.push(a), (l.length >= f.Ua || /\*a\*/.test(a)) &&
                        n.R())
                    }
                }
            }, bb: function (g) {
                var d = g.target || g.srcElement;
                if (0 === f.Sa) {
                    var p = (d.tagName || "").toLowerCase();
                    if ("embed" == p || "object" == p) return ""
                }
                var s;
                m.ga ? (s = Math.max(document.documentElement.scrollTop, document.body.scrollTop), p = Math.max(document.documentElement.scrollLeft, document.body.scrollLeft), p = g.clientX + p, s = g.clientY + s) : (p = g.pageX, s = g.pageY);
                g = n.hb(g, d, p, s);
                var e = window.innerWidth || document.documentElement.clientWidth || document.body.offsetWidth;
                switch (c.align) {
                    case 1:
                        p -= e / 2;
                        break;
                    case 2:
                        p -= e
                }
                e =
                    [];
                e.push(p);
                e.push(s);
                e.push(g.Bb);
                e.push(g.Cb);
                e.push(g.Eb);
                e.push(a.i(g.Db));
                e.push(g.Ub);
                e.push(g.pb);
                (d = "a" === (d.tagName || "").toLowerCase() ? d : b.ab(d)) ? (e.push("a"), e.push(a.i(encodeURIComponent(d.href)))) : e.push("b");
                return e.join("*")
            }, hb: function (g, d, p, s) {
                g = b.wa(d);
                var e = 0, f = 0, k = 0, l = 0;
                if (d && (e = d.offsetWidth || d.clientWidth, f = d.offsetHeight || d.clientHeight, l = b.ib(d), k = l.left, l = l.top, a.e(d.getBBox, "Function") && (f = d.getBBox(), e = f.width, f = f.height), "html" === (d.tagName || "").toLowerCase())) e = Math.max(e,
                    d.clientWidth), f = Math.max(f, d.clientHeight);
                return {
                    Bb: Math.round(100 * ((p - k) / e)),
                    Cb: Math.round(100 * ((s - l) / f)),
                    Eb: m.orientation,
                    Db: g,
                    Ub: e,
                    pb: f
                }
            }, R: function () {
                0 !== l.length && (h.a.b.et = 2, h.a.b.ep = l.join("!"), h.a.h(), l = [])
            }
        }, e = {
            La: function () {
                c.ctrk && setInterval(e.Ib, f.Hb)
            }, Ib: function () {
                var a = m.G() + m.B();
                0 < a - h.a.b.vl && (h.a.b.vl = a)
            }
        };
        k.c("pv-b", n.Ha);
        k.c("pv-b", e.La);
        return n
    })();
    (function () {
        var b = mt.lang, a = mt.d, d = mt.event, m = mt.g, f = h.j, k = h.m, l = +new Date, n = [], e = {
            L: function () {
                return function (g) {
                    if (h.a && h.a.I && c.aet && c.aet.length) {
                        var d = g.target || g.srcElement;
                        if (d) {
                            var p = h.a.ta, s = a.getAttribute(d, f.sa) != t ? r : u;
                            if (a.getAttribute(d, f.ra) == t) if (s) e.V(e.ca(d, g)); else {
                                var k = a.N(d);
                                if (b.H(p, "*") || b.H(p, k)) e.V(e.ca(d, g)); else for (; d.parentNode != t;) {
                                    var s = d.parentNode, k = a.N(s), l = "a" === k && b.H(p, "a") ? r : u,
                                        k = "button" === k && b.H(p, "button") ? r : u,
                                        m = a.getAttribute(s, f.sa) != t ? r : u;
                                    if (a.getAttribute(s,
                                        f.ra) == t && (l || k || m)) {
                                        e.V(e.ca(s, g));
                                        break
                                    }
                                    d = d.parentNode
                                }
                            }
                        }
                    }
                }
            }, ca: function (g, d) {
                var p = {}, e = f.Pa;
                p.id = a.getAttribute(g, e.id) || a.getAttribute(g, "id") || "";
                p.X = a.getAttribute(g, e.X) || a.getAttribute(g, "class") || "";
                p.qa = a.getAttribute(g, e.qa) || a.wa(g);
                p.content = a.getAttribute(g, e.content) || a.eb(g);
                p.T = a.getAttribute(g, e.T) || a.N(g);
                p.link = a.getAttribute(g, e.link) || a.getAttribute(g, "href") || "";
                p.type = d.type || "click";
                e = b.za(g.offsetTop) ? g.offsetTop : 0;
                "click" === d.type ? e = m.ga ? d.clientY + Math.max(document.documentElement.scrollTop,
                    document.body.scrollTop) : d.pageY : "touchend" === d.type && (d.ka && b.e(d.ka.changedTouches, "Array") && d.ka.changedTouches.length) && (e = d.ka.changedTouches[0].pageY);
                p.Ob = e;
                return p
            }, V: function (a) {
                var d = b.i,
                    d = [+new Date - (h.a.z !== q ? h.a.z : l), d(a.id), d(a.X), d(a.T), d(a.qa), d(a.link), d(a.content), a.type, a.Ob].join("*");
                e.W(d);
                b.H(["a"], a.T) && b.e(this.K(), "Function") && this.K()()
            }, W: function (a) {
                a.length > f.D || (encodeURIComponent(n.join("!") + a).length > f.D && (e.p(n.join("!")), n = []), n.push(a))
            }, p: function (a) {
                h.a.b.et =
                    5;
                h.a.b.ep = a;
                h.a.h()
            }, K: function () {
                return function () {
                    n && n.length && (e.p(n.join("!")), n = [])
                }
            }
        };
        b.ha() && "" !== c.aet && k.c("pv-b", function () {
            d.c(document, "click", e.L());
            "ontouchend" in document && d.c(window, "touchend", e.L());
            d.c(window, "unload", e.K())
        });
        return e
    })();
    (function () {
        var b = mt.event, a = mt.g, d = h.j, m = h.m, f = +new Date, k = [], l = t, n = {
            Xa: function () {
                return function () {
                    h.a && (h.a.I && c.aet && c.aet.length) && (window.clearTimeout(l), l = window.setTimeout(function () {
                        n.Ka(a.G() + a.B())
                    }, 150))
                }
            }, Ka: function (a) {
                n.W([+new Date - (h.a.z !== q ? h.a.z : f), a].join("*"))
            }, W: function (a) {
                if (encodeURIComponent(k.join("!") + a).length > d.D || 5 < k.length) n.p(k.join("!")), k = [];
                k.push(a)
            }, p: function (d) {
                h.a.b.et = 6;
                h.a.b.vh = a.B();
                h.a.b.ep = d;
                h.a.h()
            }, K: function () {
                return function () {
                    k && k.length && (n.p(k.join("!")),
                        k = [])
                }
            }
        };
        mt.lang.ha() && "" !== c.aet && m.c("pv-b", function () {
            b.c(window, "scroll", n.Xa());
            b.c(window, "unload", n.K())
        });
        return n
    })();
    (function () {
        var b = mt.d, a = h.j, d = h.load, m = h.ua;
        h.m.c("pv-b", function () {
            var f = a.protocol + "//crs.baidu.com/";
            c.rec && b.Ca(function () {
                for (var k = 0, l = c.rp.length; k < l; k++) {
                    var n = c.rp[k][0], e = c.rp[k][1], g = b.aa("hm_t_" + n);
                    if (e && !(2 == e && !g || g && "" !== g.innerHTML)) g = "", g = Math.round(Math.random() * a.A), g = 4 == e ? f + "hl.js?" + ["siteId=" + c.id, "planId=" + n, "rnd=" + g].join("&") : f + "t.js?" + ["siteId=" + c.id, "planId=" + n, "from=" + m(), "referer=" + encodeURIComponent(document.referrer), "title=" + encodeURIComponent(document.title), "rnd=" +
                    g].join("&"), d(g)
                }
            })
        })
    })();
    (function () {
        var b = h.j, a = h.load, d = h.ua;
        h.m.c("pv-b", function () {
            if (c.trust && c.vcard) {
                var m = "https://tag.baidu.com/vcard/v.js?" + ["siteid=" + c.vcard, "url=" + encodeURIComponent(document.location.href), "source=" + d(), "rnd=" + Math.round(Math.random() * b.A), "hm=1"].join("&");
                a(m)
            }
        })
    })();
    (function () {
        function b() {
            return function () {
                h.a.b.nv = 0;
                h.a.b.st = 4;
                h.a.b.et = 3;
                h.a.b.ep = h.Y.jb() + "," + h.Y.fb();
                h.a.h()
            }
        }

        function a() {
            clearTimeout(C);
            var d;
            w && (d = "visible" == document[w]);
            B && (d = !document[B]);
            n = "undefined" == typeof d ? r : d;
            if ((!l || !e) && n && g) y = r, p = +new Date; else if (l && e && (!n || !g)) y = u, s += +new Date - p;
            l = n;
            e = g;
            C = setTimeout(a, 100)
        }

        function d(a) {
            var g = document, d = "";
            if (a in g) d = a; else for (var b = ["webkit", "ms", "moz", "o"], p = 0; p < b.length; p++) {
                var e = b[p] + a.charAt(0).toUpperCase() + a.slice(1);
                if (e in g) {
                    d =
                        e;
                    break
                }
            }
            return d
        }

        function m(d) {
            if (!("focus" == d.type || "blur" == d.type) || !(d.target && d.target != window)) g = "focus" == d.type || "focusin" == d.type ? r : u, a()
        }

        var f = mt.event, k = h.m, l = r, n = r, e = r, g = r, v = +new Date, p = v, s = 0, y = r,
            w = d("visibilityState"), B = d("hidden"), C;
        a();
        (function () {
            var g = w.replace(/[vV]isibilityState/, "visibilitychange");
            f.c(document, g, a);
            f.c(window, "pageshow", a);
            f.c(window, "pagehide", a);
            "object" == typeof document.onfocusin ? (f.c(document, "focusin", m), f.c(document, "focusout", m)) : (f.c(window, "focus", m),
                f.c(window, "blur", m))
        })();
        h.Y = {
            jb: function () {
                return +new Date - v
            }, fb: function () {
                return y ? +new Date - p + s : s
            }
        };
        k.c("pv-b", function () {
            f.c(window, "unload", b())
        });
        return h.Y
    })();
    (function () {
        var b = mt.lang, a = h.j, d = h.load, m = {
            zb: function (f) {
                if ((window._dxt === q || b.e(window._dxt, "Array")) && "undefined" !== typeof h.a) {
                    var k = h.a.ba();
                    d([a.protocol, "//datax.baidu.com/x.js?si=", c.id, "&dm=", encodeURIComponent(k)].join(""), f)
                }
            }, Nb: function (a) {
                if (b.e(a, "String") || b.e(a, "Number")) window._dxt = window._dxt || [], window._dxt.push(["_setUserId", a])
            }
        };
        return h.Va = m
    })();
    (function () {
        function b(a, d, b, e) {
            if (!(a === q || d === q || e === q)) {
                if ("" === a) return [d, b, e].join("*");
                a = String(a).split("!");
                for (var f, k = u, l = 0; l < a.length; l++) if (f = a[l].split("*"), String(d) === f[0]) {
                    f[1] = b;
                    f[2] = e;
                    a[l] = f.join("*");
                    k = r;
                    break
                }
                k || a.push([d, b, e].join("*"));
                return a.join("!")
            }
        }

        function a(g) {
            for (var b in g) if ({}.hasOwnProperty.call(g, b)) {
                var p = g[b];
                d.e(p, "Object") || d.e(p, "Array") ? a(p) : g[b] = String(p)
            }
        }

        var d = mt.lang, m = mt.o, f = mt.g, k = h.j, l = h.m, n = h.Va, e = {
            J: [], S: 0, Aa: u, s: {pa: "", page: ""}, init: function () {
                e.f =
                    0;
                l.c("pv-b", function () {
                    e.Wa();
                    e.Ya()
                });
                l.c("pv-d", function () {
                    e.Za();
                    e.s.page = ""
                });
                l.c("stag-b", function () {
                    h.a.b.api = e.f || e.S ? e.f + "_" + e.S : "";
                    h.a.b.ct = [decodeURIComponent(h.a.getData("Hm_ct_" + c.id) || ""), e.s.pa, e.s.page].join("!")
                });
                l.c("stag-d", function () {
                    h.a.b.api = 0;
                    e.f = 0;
                    e.S = 0
                })
            }, Wa: function () {
                var a = window._hmt || [];
                if (!a || d.e(a, "Array")) window._hmt = {
                    id: c.id, cmd: {}, push: function () {
                        for (var a = window._hmt, g = 0; g < arguments.length; g++) {
                            var b = arguments[g];
                            d.e(b, "Array") && (a.cmd[a.id].push(b), "_setAccount" ===
                            b[0] && (1 < b.length && /^[0-9a-f]{32}$/.test(b[1])) && (b = b[1], a.id = b, a.cmd[b] = a.cmd[b] || []))
                        }
                    }
                }, window._hmt.cmd[c.id] = [], window._hmt.push.apply(window._hmt, a)
            }, Ya: function () {
                var a = window._hmt;
                if (a && a.cmd && a.cmd[c.id]) for (var d = a.cmd[c.id], b = /^_track(Event|MobConv|Order|RTEvent)$/, f = 0, k = d.length; f < k; f++) {
                    var l = d[f];
                    b.test(l[0]) ? e.J.push(l) : e.la(l)
                }
                a.cmd[c.id] = {push: e.la}
            }, Za: function () {
                if (0 < e.J.length) for (var a = 0, d = e.J.length; a < d; a++) e.la(e.J[a]);
                e.J = t
            }, la: function (a) {
                var b = a[0];
                if (e.hasOwnProperty(b) &&
                    d.e(e[b], "Function")) e[b](a)
            }, _setAccount: function (a) {
                1 < a.length && /^[0-9a-f]{32}$/.test(a[1]) && (e.f |= 1)
            }, _setAutoPageview: function (a) {
                if (1 < a.length && (a = a[1], u === a || r === a)) e.f |= 2, h.a.xa = a
            }, _trackPageview: function (a) {
                if (1 < a.length && a[1].charAt && "/" === a[1].charAt(0)) {
                    e.f |= 4;
                    h.a.b.et = 0;
                    h.a.b.ep = "";
                    h.a.b.vl = f.G() + f.B();
                    h.a.b.kb = 0;
                    h.a.fa ? (h.a.b.nv = 0, h.a.b.st = 4) : h.a.fa = r;
                    var d = h.a.b.u, b = h.a.b.su;
                    h.a.b.u = k.protocol + "//" + document.location.host + a[1];
                    e.Aa || (h.a.b.su = document.location.href);
                    h.a.h();
                    h.a.b.u = d;
                    h.a.b.su = b;
                    h.a.z = +new Date
                }
            }, _trackEvent: function (a) {
                2 < a.length && (e.f |= 8, h.a.b.nv = 0, h.a.b.st = 4, h.a.b.et = 4, h.a.b.ep = d.i(a[1]) + "*" + d.i(a[2]) + (a[3] ? "*" + d.i(a[3]) : "") + (a[4] ? "*" + d.i(a[4]) : ""), h.a.h())
            }, _setCustomVar: function (a) {
                if (!(4 > a.length)) {
                    var b = a[1], p = a[4] || 3;
                    if (0 < b && 6 > b && 0 < p && 4 > p) {
                        e.S++;
                        for (var f = (h.a.b.cv || "*").split("!"), k = f.length; k < b - 1; k++) f.push("*");
                        f[b - 1] = p + "*" + d.i(a[2]) + "*" + d.i(a[3]);
                        h.a.b.cv = f.join("!");
                        a = h.a.b.cv.replace(/[^1](\*[^!]*){2}/g, "*").replace(/((^|!)\*)+$/g, "");
                        "" !== a ? h.a.setData("Hm_cv_" +
                            c.id, encodeURIComponent(a), c.age) : h.a.Fb("Hm_cv_" + c.id)
                    }
                }
            }, _setUserTag: function (a) {
                if (!(3 > a.length)) {
                    var e = d.i(a[1]);
                    a = d.i(a[2]);
                    if (e !== q && a !== q) {
                        var p = decodeURIComponent(h.a.getData("Hm_ct_" + c.id) || ""), p = b(p, e, 1, a);
                        h.a.setData("Hm_ct_" + c.id, encodeURIComponent(p), c.age)
                    }
                }
            }, _setVisitTag: function (a) {
                if (!(3 > a.length)) {
                    var f = d.i(a[1]);
                    a = d.i(a[2]);
                    if (f !== q && a !== q) {
                        var p = e.s.pa, p = b(p, f, 2, a);
                        e.s.pa = p
                    }
                }
            }, _setPageTag: function (a) {
                if (!(3 > a.length)) {
                    var f = d.i(a[1]);
                    a = d.i(a[2]);
                    if (f !== q && a !== q) {
                        var p = e.s.page,
                            p = b(p, f, 3, a);
                        e.s.page = p
                    }
                }
            }, _setReferrerOverride: function (a) {
                1 < a.length && (h.a.b.su = a[1].charAt && "/" === a[1].charAt(0) ? k.protocol + "//" + window.location.host + a[1] : a[1], e.Aa = r)
            }, _trackOrder: function (b) {
                b = b[1];
                d.e(b, "Object") && (a(b), e.f |= 16, h.a.b.nv = 0, h.a.b.st = 4, h.a.b.et = 94, h.a.b.ep = m.stringify(b), h.a.h())
            }, _trackMobConv: function (a) {
                if (a = {
                    webim: 1,
                    tel: 2,
                    map: 3,
                    sms: 4,
                    callback: 5,
                    share: 6
                }[a[1]]) e.f |= 32, h.a.b.et = 93, h.a.b.ep = a, h.a.h()
            }, _trackRTPageview: function (b) {
                b = b[1];
                d.e(b, "Object") && (a(b), b = m.stringify(b),
                512 >= encodeURIComponent(b).length && (e.f |= 64, h.a.b.rt = b))
            }, _trackRTEvent: function (b) {
                b = b[1];
                if (d.e(b, "Object")) {
                    a(b);
                    b = encodeURIComponent(m.stringify(b));
                    var f = function (a) {
                        var b = h.a.b.rt;
                        e.f |= 128;
                        h.a.b.et = 90;
                        h.a.b.rt = a;
                        h.a.h();
                        h.a.b.rt = b
                    }, p = b.length;
                    if (900 >= p) f.call(this, b); else for (var p = Math.ceil(p / 900), l = "block|" + Math.round(Math.random() * k.A).toString(16) + "|" + p + "|", n = [], w = 0; w < p; w++) n.push(w), n.push(b.substring(900 * w, 900 * w + 900)), f.call(this, l + n.join("|")), n = []
                }
            }, _setUserId: function (a) {
                a = a[1];
                n.zb();
                n.Nb(a)
            }, _setAutoTracking: function (a) {
                if (1 < a.length && (a = a[1], u === a || r === a)) h.a.ya = a
            }, _setAutoEventTracking: function (a) {
                if (1 < a.length && (a = a[1], u === a || r === a)) h.a.I = a
            }
        };
        e.init();
        h.Oa = e;
        return h.Oa
    })();
    (function () {
        function b() {
            "undefined" === typeof window["_bdhm_loaded_" + c.id] && (window["_bdhm_loaded_" + c.id] = r, this.b = {}, this.ya = this.xa = r, this.I = g.I, this.ta = f.ha() && 0 < c.aet.length ? c.aet.split(",") : "", this.fa = u, this.init())
        }

        var a = mt.url, d = mt.Fa, m = mt.oa, f = mt.lang, k = mt.cookie, l = mt.g, n = mt.localStorage,
            e = mt.sessionStorage, g = h.j, v = h.m;
        b.prototype = {
            ia: function (a, b) {
                a = "." + a.replace(/:\d+/, "");
                b = "." + b.replace(/:\d+/, "");
                var d = a.indexOf(b);
                return -1 < d && d + b.length === a.length
            }, Ba: function (a, b) {
                a = a.replace(/^https?:\/\//,
                    "");
                return 0 === a.indexOf(b)
            }, O: function (b) {
                for (var d = 0; d < c.dm.length; d++) if (-1 < c.dm[d].indexOf("/")) {
                    if (this.Ba(b, c.dm[d])) return r
                } else {
                    var e = a.da(b);
                    if (e && this.ia(e, c.dm[d])) return r
                }
                return u
            }, ba: function () {
                for (var a = document.location.hostname, b = 0, d = c.dm.length; b < d; b++) if (this.ia(a, c.dm[b])) return c.dm[b].replace(/(:\d+)?[\/\?#].*/, "");
                return a
            }, va: function () {
                for (var a = 0, b = c.dm.length; a < b; a++) {
                    var d = c.dm[a];
                    if (-1 < d.indexOf("/") && this.Ba(document.location.href, d)) return d.replace(/^[^\/]+(\/.*)/,
                        "$1") + "/"
                }
                return "/"
            }, mb: function () {
                if (!document.referrer) return g.r - g.C > c.vdur ? 1 : 4;
                var b = u;
                this.O(document.referrer) && this.O(document.location.href) ? b = r : (b = a.da(document.referrer), b = this.ia(b || "", document.location.hostname));
                return b ? g.r - g.C > c.vdur ? 1 : 4 : 3
            }, getData: function (a) {
                try {
                    return k.get(a) || e.get(a) || n.get(a)
                } catch (b) {
                }
            }, setData: function (a, b, d) {
                try {
                    k.set(a, b, {domain: this.ba(), path: this.va(), $: d}), d ? n.set(a, b, d) : e.set(a, b)
                } catch (f) {
                }
            }, Fb: function (a) {
                try {
                    k.set(a, "", {
                        domain: this.ba(), path: this.va(),
                        $: -1
                    }), e.remove(a), n.remove(a)
                } catch (b) {
                }
            }, Lb: function () {
                var a, b, d, e, f;
                g.C = this.getData("Hm_lpvt_" + c.id) || 0;
                13 === g.C.length && (g.C = Math.round(g.C / 1E3));
                b = this.mb();
                a = 4 !== b ? 1 : 0;
                if (d = this.getData("Hm_lvt_" + c.id)) {
                    e = d.split(",");
                    for (f = e.length - 1; 0 <= f; f--) 13 === e[f].length && (e[f] = "" + Math.round(e[f] / 1E3));
                    for (; 2592E3 < g.r - e[0];) e.shift();
                    f = 4 > e.length ? 2 : 3;
                    for (1 === a && e.push(g.r); 4 < e.length;) e.shift();
                    d = e.join(",");
                    e = e[e.length - 1]
                } else d = g.r, e = "", f = 1;
                this.setData("Hm_lvt_" + c.id, d, c.age);
                this.setData("Hm_lpvt_" +
                    c.id, g.r);
                d = g.r === this.getData("Hm_lpvt_" + c.id) ? "1" : "0";
                if (0 === c.nv && this.O(document.location.href) && ("" === document.referrer || this.O(document.referrer))) a = 0, b = 4;
                this.b.nv = a;
                this.b.st = b;
                this.b.cc = d;
                this.b.lt = e;
                this.b.lv = f
            }, Da: function () {
                for (var a = [], b = this.b.et, d = +new Date, e = 0, f = g.Ga.length; e < f; e++) {
                    var k = g.Ga[e], l = this.b[k];
                    "undefined" !== typeof l && "" !== l && ("tt" !== k || "tt" === k && 0 === b) && (("ct" !== k || "ct" === k && 0 === b) && ("kb" !== k || "kb" === k && 3 === b)) && a.push(k + "=" + encodeURIComponent(l))
                }
                switch (b) {
                    case 0:
                        a.push("sn=" +
                            g.F);
                        this.b.rt && a.push("rt=" + encodeURIComponent(this.b.rt));
                        break;
                    case 3:
                        a.push("sn=" + g.F);
                        break;
                    case 5:
                        a.push("sn=" + g.F);
                        a.push("_lpt=" + this.z);
                        a.push("_ct=" + d);
                        break;
                    case 6:
                        a.push("sn=" + g.F);
                        a.push("_lpt=" + this.z);
                        a.push("_ct=" + d);
                        break;
                    case 85:
                        a.push("sn=" + g.F);
                        break;
                    case 90:
                        this.b.rt && a.push("rt=" + this.b.rt)
                }
                return a.join("&")
            }, Mb: function () {
                this.Lb();
                this.b.si = c.id;
                this.b.su = document.referrer;
                this.b.ds = l.Gb;
                this.b.cl = l.colorDepth + "-bit";
                this.b.ln = String(l.language).toLowerCase();
                this.b.ja = l.javaEnabled ?
                    1 : 0;
                this.b.ck = l.cookieEnabled ? 1 : 0;
                this.b.lo = "number" === typeof _bdhm_top ? 1 : 0;
                this.b.fl = m.ob();
                this.b.v = "1.2.38";
                this.b.cv = decodeURIComponent(this.getData("Hm_cv_" + c.id) || "");
                this.b.tt = document.title || "";
                this.b.vl = l.G() + l.B();
                var b = document.location.href;
                this.b.cm = a.l(b, g.ub) || "";
                this.b.cp = a.l(b, g.vb) || a.l(b, g.Rb) || "";
                this.b.cw = a.l(b, g.tb) || a.l(b, g.Tb) || "";
                this.b.ci = a.l(b, g.qb) || a.l(b, g.Qb) || "";
                this.b.cf = a.l(b, g.wb) || a.l(b, g.Sb) || "";
                this.b.cu = a.l(b, g.rb) || a.l(b, g.Pb) || ""
            }, init: function () {
                try {
                    this.Mb(),
                        0 === this.b.nv ? this.Kb() : this.na(".*"), h.a = this, this.Qa(), v.M("pv-b"), this.Jb()
                } catch (a) {
                    var b = [];
                    b.push("si=" + c.id);
                    b.push("n=" + encodeURIComponent(a.name));
                    b.push("m=" + encodeURIComponent(a.message));
                    b.push("r=" + encodeURIComponent(document.referrer));
                    d.log(g.Q + "//" + g.ma + "?" + b.join("&"))
                }
            }, Jb: function () {
                function a() {
                    v.M("pv-d")
                }

                this.xa ? (this.fa = r, this.b.et = 0, this.b.ep = "", this.b.vl = l.G() + l.B(), this.h(a)) : a();
                this.z = +new Date
            }, h: function (a) {
                if (this.ya) {
                    var b = this;
                    b.b.rnd = Math.round(Math.random() * g.A);
                    v.M("stag-b");
                    var e = g.Q + "//" + g.ma + "?" + b.Da();
                    v.M("stag-d");
                    b.Ma(e);
                    d.log(e, function (d) {
                        b.na(d);
                        f.e(a, "Function") && a.call(b)
                    })
                }
            }, Qa: function () {
                var b = document.location.hash.substring(1), d = RegExp(c.id),
                    e = a.da(document.referrer) === g.Na ? 1 : 0, f = a.l(b, "jn"),
                    k = /^heatlink$|^select$|^pageclick$/.test(f);
                b && (d.test(b) && e && k) && (this.b.rnd = Math.round(Math.random() * g.A), b = document.createElement("script"), b.setAttribute("type", "text/javascript"), b.setAttribute("charset", "utf-8"), b.setAttribute("src", g.protocol + "//" +
                    c.js + f + ".js?" + this.b.rnd), f = document.getElementsByTagName("script")[0], f.parentNode.insertBefore(b, f))
            }, Ma: function (a) {
                var b = e.get("Hm_unsent_" + c.id) || "",
                    d = this.b.u ? "" : "&u=" + encodeURIComponent(document.location.href),
                    b = encodeURIComponent(a.replace(/^https?:\/\//, "") + d) + (b ? "," + b : "");
                e.set("Hm_unsent_" + c.id, b)
            }, na: function (a) {
                var b = e.get("Hm_unsent_" + c.id) || "";
                b && (a = encodeURIComponent(a.replace(/^https?:\/\//, "")), a = RegExp(a.replace(/([\*\(\)])/g, "\\$1") + "(%26u%3D[^,]*)?,?", "g"), (b = b.replace(a, "").replace(/,$/,
                    "")) ? e.set("Hm_unsent_" + c.id, b) : e.remove("Hm_unsent_" + c.id))
            }, Kb: function () {
                var a = this, b = e.get("Hm_unsent_" + c.id);
                if (b) for (var b = b.split(","), f = function (b) {
                    d.log(g.Q + "//" + decodeURIComponent(b), function (b) {
                        a.na(b)
                    })
                }, k = 0, l = b.length; k < l; k++) f(b[k])
            }
        };
        return new b
    })();
    var z = h.j, A = h.load;
    if (c.apps) {
        var D = [z.protocol, "//ers.baidu.com/app/s.js?"];
        D.push(c.apps);
        A(D.join(""))
    }
    (function () {
        var b = mt.event, a = mt.lang, d = h.j;
        if (c.kbtrk && "undefined" !== typeof h.a) {
            h.a.b.kb = a.za(h.a.b.kb) ? h.a.b.kb : 0;
            var m = function () {
                h.a.b.et = 85;
                h.a.b.ep = h.a.b.kb;
                h.a.h()
            };
            b.c(document, "keyup", function () {
                h.a.b.kb++
            });
            b.c(window, "unload", function () {
                m()
            });
            setInterval(m, d.Ab)
        }
    })();
    var E = h.j, F = h.load;
    c.pt && F([E.protocol, "//ada.baidu.com/phone-tracker/insert_bdtj?sid=", c.pt].join(""));
    var G = h.j, H = h.load;
    c.lxb && H([G.protocol, "//lxbjs.baidu.com/lxb.js?sid=", c.lxb].join(""));
    var I = h.load, J = h.j.protocol;
    if (c.qiao) {
        for (var K = [J + "//goutong.baidu.com/site/"], L = c.id, M = 5381, N = L.length, O = 0; O < N; O++) M = (33 * M + Number(L.charCodeAt(O))) % 4294967296;
        2147483648 < M && (M -= 2147483648);
        K.push(M % 1E3 + "/");
        K.push(c.id + "/b.js");
        K.push("?siteId=" + c.qiao);
        I(K.join(""))
    }
    (function () {
        var b = mt.event, a = mt.o;
        try {
            if (window.performance && performance.timing && "undefined" !== typeof h.a) {
                var d = function (a) {
                    var b = performance.timing, d = b[a + "Start"] ? b[a + "Start"] : 0;
                    a = b[a + "End"] ? b[a + "End"] : 0;
                    return {start: d, end: a, value: 0 < a - d ? a - d : 0}
                }, m = function () {
                    var b;
                    b = d("navigation");
                    var f = d("request");
                    b = {
                        netAll: f.start - b.start,
                        netDns: d("domainLookup").value,
                        netTcp: d("connect").value,
                        srv: d("response").start - f.start,
                        dom: performance.timing.domInteractive - performance.timing.fetchStart,
                        loadEvent: d("loadEvent").end -
                            b.start
                    };
                    h.a.b.et = 87;
                    h.a.b.ep = a.stringify(b);
                    h.a.h()
                };
                b.c(window, "load", function () {
                    setTimeout(m, 500)
                })
            }
        } catch (f) {
        }
    })();
    (function () {
        var b = mt.g, a = mt.lang, d = mt.event, m = mt.o;
        if ("undefined" !== typeof h.a && (c.med || (!b.ga || 7 < b.yb) && c.cvcc)) {
            var f, k, l, n, e = function (a) {
                if (a.item) {
                    for (var b = a.length, d = Array(b); b--;) d[b] = a[b];
                    return d
                }
                return [].slice.call(a)
            }, g = function (a, b) {
                for (var d in a) if (a.hasOwnProperty(d) && b.call(a, d, a[d]) === u) return u
            }, v = function (b, d) {
                var e = {};
                e.n = f;
                e.t = "clk";
                e.v = b;
                if (d) {
                    var k = d.getAttribute("href"), g = d.getAttribute("onclick") ? "" + d.getAttribute("onclick") : t,
                        n = d.getAttribute("id") || "";
                    l.test(k) ? (e.sn = "mediate",
                        e.snv = k) : a.e(g, "String") && l.test(g) && (e.sn = "wrap", e.snv = g);
                    e.id = n
                }
                h.a.b.et = 86;
                h.a.b.ep = m.stringify(e);
                h.a.h();
                for (e = +new Date; 400 >= +new Date - e;) ;
            };
            if (c.med) k = "/zoosnet", f = "swt", l = /swt|zixun|call|chat|zoos|business|talk|kefu|openkf|online|\/LR\/Chatpre\.aspx/i, n = {
                click: function () {
                    for (var a = [], b = e(document.getElementsByTagName("a")), b = [].concat.apply(b, e(document.getElementsByTagName("area"))), b = [].concat.apply(b, e(document.getElementsByTagName("img"))), d, f, k = 0, g = b.length; k < g; k++) d = b[k], f = d.getAttribute("onclick"),
                        d = d.getAttribute("href"), (l.test(f) || l.test(d)) && a.push(b[k]);
                    return a
                }
            }; else if (c.cvcc) {
                k = "/other-comm";
                f = "other";
                l = c.cvcc.q || q;
                var p = c.cvcc.id || q;
                n = {
                    click: function () {
                        for (var a = [], b = e(document.getElementsByTagName("a")), b = [].concat.apply(b, e(document.getElementsByTagName("area"))), b = [].concat.apply(b, e(document.getElementsByTagName("img"))), d, f, k, g = 0, m = b.length; g < m; g++) d = b[g], l !== q ? (f = d.getAttribute("onclick"), k = d.getAttribute("href"), p ? (d = d.getAttribute("id"), (l.test(f) || l.test(k) || p.test(d)) &&
                        a.push(b[g])) : (l.test(f) || l.test(k)) && a.push(b[g])) : p !== q && (d = d.getAttribute("id"), p.test(d) && a.push(b[g]));
                        return a
                    }
                }
            }
            if ("undefined" !== typeof n && "undefined" !== typeof l) {
                var s;
                k += /\/$/.test(k) ? "" : "/";
                var y = function (b, d) {
                    if (s === d) return v(k + b, d), u;
                    if (a.e(d, "Array") || a.e(d, "NodeList")) for (var e = 0, f = d.length; e < f; e++) if (s === d[e]) return v(k + b + "/" + (e + 1), d[e]), u
                };
                d.c(document, "mousedown", function (b) {
                    b = b || window.event;
                    s = b.target || b.srcElement;
                    var d = {};
                    for (g(n, function (b, e) {
                        d[b] = a.e(e, "Function") ? e() : document.getElementById(e)
                    }); s &&
                         s !== document && g(d, y) !== u;) s = s.parentNode
                })
            }
        }
    })();
    (function () {
        var b = mt.d, a = mt.lang, d = mt.event, m = mt.o;
        if ("undefined" !== typeof h.a && a.e(c.cvcf, "Array") && 0 < c.cvcf.length) {
            var f = {
                Ja: function () {
                    for (var a = c.cvcf.length, l, m = 0; m < a; m++) (l = b.aa(decodeURIComponent(c.cvcf[m]))) && d.c(l, "click", f.Z())
                }, Z: function () {
                    return function () {
                        h.a.b.et = 86;
                        var a = {n: "form", t: "clk"};
                        a.id = this.id;
                        h.a.b.ep = m.stringify(a);
                        h.a.h()
                    }
                }
            };
            b.Ca(function () {
                f.Ja()
            })
        }
    })();
    (function () {
        var b = mt.event, a = mt.o;
        if (c.med && "undefined" !== typeof h.a) {
            var d = +new Date, m = {n: "anti", sb: 0, kb: 0, clk: 0}, f = function () {
                h.a.b.et = 86;
                h.a.b.ep = a.stringify(m);
                h.a.h()
            };
            b.c(document, "click", function () {
                m.clk++
            });
            b.c(document, "keyup", function () {
                m.kb = 1
            });
            b.c(window, "scroll", function () {
                m.sb++
            });
            b.c(window, "unload", function () {
                m.t = +new Date - d;
                f()
            });
            b.c(window, "load", function () {
                setTimeout(f, 5E3)
            })
        }
    })();
})();
