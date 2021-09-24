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
  
  
(function () {
 var fuse;
  $("#search-input").focus(async function(e) {
    if (fuse) {
      return;
    }

    $(e.target).addClass("loading");
    var response = await fetch($("#search-input").data("search-index"));
    var data = await response.json();

    var options = {
      keys: ["title", "description", "tags"],
      ignoreLocation: true,
      threshold: 0.1,
      includeMatches: true,
      includeScore: true,
    };
    fuse = new Fuse(data, options);

    $(e.target).removeClass("loading");
    console.log(fuse);
  });

  // Use algolia autocomplete
  var options = {
    autoselect: true,
    debug: true,
    hint: false,
    minLength: 2,
  };
  var q;
  
  async function searchFuse(query, callback) {
  await fuse;
  var items;
  if (!fuse) {
    items = [];
  } else {
    q = query;
    var results = fuse.search(query, { limit: 20 });
    // https://stackoverflow.com/a/47158807
    var order = { project: 1, package: 2, events: 3 , commcalls: 4, blog:5};
    items = results
      .filter((x) => x.score <= 0.75)
      .map((x) => x.item).sort(function (a, b) {
        console.log(a);
    return order[a.type] - order[b.type];
});;
    if (items.length === 0) {
      items = [{title:"Sorry 😿 No results found.",path:window.location.href}];
    }
  }
  callback(items);
}

autocomplete("#search-input", options, [
    {
      name: "content",
      source: searchFuse,
      templates: {
        suggestion: (s) => {
            return `[${s.type}] ${s.title}`;
         
        },
      },
    },
  ]).on('autocomplete:selected', function(event, s) {
    window.location.href = s.path + "?q=" + q + "#" + s.id;
  });
  
  })();