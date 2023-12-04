var prueba = new ReacetiveComponent();

prueba.exportBuilder = function (data) {
    return `
        ${data["id"]}
    `;
};
