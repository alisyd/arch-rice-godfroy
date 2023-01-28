

const Pet = () => {
    return React.createElement(
        "div",
        {},
        [
            React.createElement("h1", {}, "Jeffery Dahmer"),
            React.createElement("h2", {}, "mad dog"),
            React.createElement("h1", {}, "Human centipede"),   
        ]
    );
};

const App = () => {
    return React.createElement(
        "div",
        {},
        React.createElement("h1", {},"Adopt him!"),
        React.createElement(Pet),
        React.createElement(Pet),
        React.createElement(Pet),
    );
};
const container = document.getElementById("root");
const root = ReactDOM.createRoot(container);
root.render(React.createElement(App));