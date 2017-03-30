// Define the tour!
  var tour = {
    id: "yana",
    steps: [
      {
        title: "My Header",
        content: "This is the header of my page.",
       target: "header",
        placement: "bottom",
      arrowOffset: 60

      },
      {
        title: "My content",
        content: "Here is where I put my content.",
        target: document.querySelector("#content p"),
        placement: "bottom"
      },
      {
        title: "Tes",
        content: "tes tour guide",
        target: document.querySelector("#tes code"),
        placement: "bottom"
      }
    ],
    showPrevButton: true,
  scrollTopMargin: 100
  }
  // Start the tour!
  hopscotch.startTour(tour);
      