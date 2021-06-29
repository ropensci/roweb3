(function () {
    var url = new URL(window.location.href);
    var toMark = url.searchParams.get("q");
    var context = document.querySelector("body");
    var mark = new Mark(context);
    if (toMark !== null && toMark !== '') {
      mark.mark(toMark, {
        accuracy: {
          value: "complementary",
          limiters: [",", ".", ":", "/"],
        }
      });
    }
  })();