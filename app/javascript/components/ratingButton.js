
const ratingButtonDisplay = () => {

  const buttons = document.querySelectorAll(".icon-view");
    buttons.forEach( (button) => {

      button.addEventListener("click", (event) => {
        event.preventDefault();
        event.currentTarget.classList.add("icon-display-non");
      });
  });
};

export { ratingButtonDisplay };





