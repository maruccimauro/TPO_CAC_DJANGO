const baseImgPath = "/Django/front/resources/img/";
const enumApi = {
    sectionOfferCard: "sectionOfferCard",
    branchOffices: "branchOffices",
};

const conf = {
    idForm: "apiForm",
    nameForm: "apiForm",
};

const modelField = {
    name: null,
    type: null,
    label: null,
    callbackRef: null,
};

const enumTextClickColor = {
    create: { color: "white", background: "green" },
    delete: { color: "white", background: "red" },
    update: { color: "white", background: "rgba(255, 217, 0, 0.733)" },
};

let currentApi = {};
let recorsetChages = {};

function connectNavBarItems() {
    Object.keys(api).forEach((item) => {
        console.log("connected " + item);
        document.getElementById(item).addEventListener("click", () => {
            selectPanel(item);
        });
        console.log("connected " + item);
    });
}

const api = {
    sectionOfferCard: {
        name: "sectionOfferCard",
        urlApi: "http://127.0.0.1:8000/api/sectionoffercard/",
        fields: {
            country: {
                name: "country",
                type: "text",
                label: "Ingrese el nombre del PAIS.",
            },
            city: {
                name: "city",
                type: "text",
                label: "Ingrese el nombre de la CIUDAD.",
            },
            discount: {
                name: "discount",
                type: "text",
                label: "Ingrese el porcentaje de DESCUENTO",
            },
            image: {
                name: "image",
                type: "file",
                label: "Seleccione una IMAGEN a mostrar",
            },
        },
    },
    branchOffices: {
        name: "branchOffices",
        urlApi: "http://127.0.0.1:8000/api/branchoffices/",
        fields: {
            country: {
                name: "country",
                type: "text",
                label: "Ingrese el nombre del PAIS.",
            },
            city: {
                name: "city",
                type: "text",
                label: "Ingrese el nombre de la CIUDAD.",
            },
            phone: {
                name: "phone",
                type: "text",
                label: "Ingrese el numero de TELEFONO",
            },
        },
    },
    assistancePlan: {
        name: "assistancePlan",
        urlApi: "http://127.0.0.1:8000/api/assistanceplan/",

        fields: {
            name: {
                name: "name",
                type: "text",
                label: "Ingrese el nombre del plan",
            },
            summary: {
                name: "summary",
                type: "text",
                label: "Ingrese un resumen",
            },
            link: {
                name: "link",
                type: "text",
                label: "ingrese una url para redireccionar al usuario",
            },
            medal_image: {
                name: "medal_image",
                type: "file",
                label: "Seleccione una imagen.",
            },
            time: {
                name: "time",
                type: "text",
                label: "Ingrese un rango de tiempo de cobertura",
            },
            range: {
                name: "range",
                type: "text",
                label: "Ingrese un rango cantidad de personas cubiertas",
            },
            queries: {
                name: "queries",
                type: "text",
                label: "Ingrese modo de cobertura de las consultas",
            },
            internation: {
                name: "internation",
                type: "text",
                label: "Ingrese el tipo de cobertura de internacion",
            },
            reinstatement: {
                name: "reinstatement",
                type: "text",
                label: "Ingrese el tipo de reintegro para consultas",
            },
            medicaments: {
                name: "medicaments",
                type: "text",
                label: "Ingrese el tipo de reintegro para medicamentos",
            },
            zone: {
                name: "zone",
                type: "text",
                label: "Ingrese la zona de cobertura",
            },
        },
    },
    sectionHotels: {
        name: "sectionHotels",
        urlApi: "http://127.0.0.1:8000/api/sectionhotels/",
        fields: {
            country: {
                name: "country",
                type: "text",
                label: "Ingrese el nombre del Pais.",
            },
            city: {
                name: "city",
                type: "text",
                label: "Ingrese el nombre de la ciudad.",
            },
            content: {
                name: "content",
                type: "text",
                label: "Ingrese un contenido",
            },
            hotel_name: {
                name: "hotel_name",
                type: "text",
                label: "Ingrese el nombre del contenido.",
            },
            stars: {
                name: "stars",
                type: "text",
                label: "Ingrese un numero de estrellas",
            },
            punctuation: {
                name: "punctuation",
                type: "text",
                label: "Ingrese un numero de puntuacion",
            },
            opinions: {
                name: "opinions",
                type: "text",
                label: "Ingrese un numero de valoracion de opinion puntuacion",
            },
            image1: {
                name: "image1",
                type: "file",
                label: "ingrese una imagen",
            },
            image2: {
                name: "image2",
                type: "file",
                label: "ingrese una imagen",
            },
            image3: {
                name: "image3",
                type: "file",
                label: "ingrese una imagen",
            },
            image4: {
                name: "image4",
                type: "file",
                label: "ingrese una imagen",
            },
        },
    },
    flightsSectionCard: {
        name: "flightsSectionCard",
        urlApi: "http://127.0.0.1:8000/api/flightssectioncard/",
        fields: {
            country: {
                name: "country",
                type: "text",
                label: "Ingresa el nombre del Pais",
            },
            city: {
                name: "city",
                type: "text",
                label: "Ingresa el nombre de la ciudad",
            },
            next_flight: {
                name: "next_flight",
                type: "text",
                label: "Ingresa dias para el proximo vuelo",
            },
            image: {
                name: "image",
                type: "file",
                label: "Selecciona una imagen",
            },
            content: {
                name: "content",
                type: "text",
                label: "Ingresa un texto de contenido.",
            },
        },
    },
    // name: {
    //     name: "",
    //     urlApi: "",
    //     fields: {
    //         name: {
    //             name: "",
    //             type: "",
    //             label: "",
    //         },
    //     },
    // },
};

function resetTemporalSets() {
    recorsetChages = {};
}

function selectPanel(apiNameRef) {
    currentApi = api[apiNameRef];
    console.log(currentApi);
    resetTemporalSets();
    createForm(currentApi);
    buildSectionApi(currentApi);
}

function createForm(obj) {
    let form = document.getElementById("apiForm");
    form.setAttribute("action", obj.urlApi);
    form.setAttribute("enctype", "multipart/form-data");
    form.innerHTML = "";
    Object.keys(obj.fields).forEach((ref) => {
        form.insertAdjacentElement(
            "beforeend",
            createFieldItemForm(obj.fields[ref])
        );
    });
    const buttonSubmitElementProps = {
        type: "button",
        name: "submit",
        value: "NUEVO",
        class: "buttonForm submit",
    };

    form.insertAdjacentElement(
        "beforeend",
        createElement("input", buttonSubmitElementProps, sendCreateItem)
    );

    const buttonCleanElementProps = {
        type: "button",
        name: "clean",
        value: "LIMPIAR",
        class: "buttonForm clean",
    };

    form.insertAdjacentElement(
        "beforeend",
        createElement("input", buttonCleanElementProps, CleanForm)
    );
}

async function buildSectionApi(obj) {
    fetch(obj.urlApi)
        .then((response) => {
            if (!response.ok) {
                throw new Error("hubo un errror al tratar la solicitud");
            }
            return response.json();
        })
        .then((data) => {
            console.log("Data:", data);
            let section = document.getElementById("article-show");
            section.innerHTML = "";

            data.forEach((item) => {
                const containerProps = {
                    id: `${currentApi.name}_${item.id}`,
                    updater_id: `item${item.id}`,
                    class: "article-show-item",
                };
                let container = createElement("div", containerProps);
                const leftPanelProps = {
                    class: "item-leftPanel",
                };
                let leftPanel = createElement("div", leftPanelProps);

                const rightPanelProps = {
                    class: "item-rightPanel",
                };
                let rightPanel = createElement("div", rightPanelProps);

                Object.keys(item).forEach((ref) => {
                    console.log(ref == "id");
                    if (ref != "id" && currentApi.fields[ref].type == "file") {
                        rightPanel.insertAdjacentElement(
                            "beforeend",
                            createImageContainer(
                                baseImgPath + getDirFile(item[ref])
                            )
                        );
                    } else {
                        leftPanel.insertAdjacentElement(
                            "beforeend",
                            createFieldItemSection(ref, item[ref])
                        );
                    }
                });

                container.insertAdjacentElement("afterbegin", rightPanel);

                leftPanel.insertAdjacentElement(
                    "beforeend",
                    createLeftPanelButtonContainer()
                );

                container.insertAdjacentElement("afterbegin", leftPanel);
                section.insertAdjacentElement("afterbegin", container);
            });
        })
        .catch((error) => console.error("Error:", error));
}

function getDirFile(dir) {
    const path = dir.split("/");
    const fileName = path.pop();
    const patterPath = path.pop();
    return patterPath + "/" + fileName;
}

function setChangeItem(e) {
    let nodeContainer = getNodeUpdaterID(e.target);
    let updateID = getUpdaterID(e.target);

    if (!(updateID in recorsetChages)) {
        recorsetChages[updateID] = {};
    }
    recorsetChages[updateID][e.target.name] = e.target.value;

    nodeContainer.classList.add("changeItem");
    nodeContainer.classList.remove("updateItem");
}

function getUpdaterID(element) {
    return getNodeUpdaterID(element).getAttribute("updater_id");
}

function getNodeUpdaterID(element) {
    let id = null;

    let node = element;
    let safeWhile = 0;

    while (!node.parentElement.getAttribute("updater_id")) {
        node = node.parentElement;
        safeWhile++;
        if (safeWhile > 20) {
            alert("problemas encontrado el id.");
            break;
        }
    }
    return node.parentElement;
}

function CleanForm() {
    let fields = document.forms[conf.idForm].elements;
    Object.keys(fields).forEach((field) => {
        if (fields[field].type != "button") {
            fields[field].value = "";
        }
    });
}

/* Send to Api */
/**********************************************************/
async function sendDeleteItem(e) {
    updateID = getUpdaterID(e.target);

    fetch(`${currentApi.urlApi}${updateID.split("item").pop()}/`, {
        method: "DELETE",
        headers: {
            "Content-Type": "application/json",
        },
    })
        .then((response) => {
            if (!response.ok) {
                throw new Error("Error al intentar eliminar el recurso");
            }

            let nodeContainer = getNodeUpdaterID(e.target);
            nodeContainer.remove();
            showTextClickClick(
                e.clientX,
                e.clientY,
                "¡Eliminado!",
                enumTextClickColor.delete
            );
            console.log("Recurso eliminado exitosamente");
            console.log("Recurso eliminado exitosamente");
        })
        .catch((error) => {
            console.error("Error:", error);
            alert("Error: " + error.message);
        });
}

const enumStatusCss = {
    changeItem: "changeItem",
    updateItem: "updateItem",
    deleteItem: "deleteItem",
};

function setStatusCss(node, status) {
    console.log(status == enumStatusCss[status]);
    Object.keys(enumStatusCss).forEach((item) => {
        node.classList.add(
            status == enumStatusCss[item] ? enumStatusCss[item] : "nothing"
        );
        node.classList.remove(
            status != enumStatusCss[item] ? enumStatusCss[item] : "nothing"
        );
    });
}

function sendUpdateItem(e) {
    updateID = getUpdaterID(e.target);

    if (!(updateID in recorsetChages)) {
        console.log("no hay cambios para actualizar");
    } else {
        fetch(`${currentApi.urlApi}${updateID.split("item").pop()}/`, {
            method: "PATCH",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify(recorsetChages[updateID]),
        })
            .then((response) => {
                if (!response.ok) {
                    throw new Error("Error al intentar actualizar el recurso");
                }
                delete recorsetChages[updateID];
                let nodeContainer = getNodeUpdaterID(e.target);

                nodeContainer.classList.remove("changeItem");
                nodeContainer.classList.add("updateItem");
                showTextClickClick(
                    e.clientX,
                    e.clientY,
                    "¡Actualizado!",
                    enumTextClickColor.update
                );
                console.log("Recurso actualizado exitosamente");
            })
            .catch((error) => {
                console.error("Error:", error);
                alert("Error: " + error.message);
            });
    }
}

function sendCreateItem(e) {
    const formulario = document.getElementById("apiForm");
    const formData = new FormData(formulario);

    fetch(currentApi.urlApi, {
        method: "POST",
        body: formData,
    })
        .then((response) => {
            if (!response.ok) {
                throw new Error("Error al enviar el formulario");
            }
            showTextClickClick(
                e.clientX,
                e.clientY,
                "¡Creado!",
                enumTextClickColor.create
            );
            console.log("Formulario enviado exitosamente");
            CleanForm();
            selectPanel(currentApi.name);
        })
        .catch((error) => {
            console.error("Error:", error);
            alert("Error: " + error.message);
        });
}

/* Preset Elements */
/**********************************************************/

function createElement(
    tagName = "div",
    props = null,
    call = null,
    event = "click"
) {
    let element = document.createElement(tagName);
    if (props) {
        Object.keys(props).forEach((prop) => {
            element.setAttribute(prop, props[prop]);
        });
        if (call) {
            element.addEventListener(event, (e) => {
                call(e);
            });
        }
    }
    return element;
}

function createFieldItemForm(fieldForm) {
    const fieldContainerProps = {
        class: "fieldContainer",
    };
    let fieldContainer = createElement("div", fieldContainerProps);

    const labelProps = { for: fieldForm.name };
    let label = createElement("label", labelProps);
    label.innerText = `${fieldForm.label} :`;

    const inputFielProps = {
        type: fieldForm.type,
        name: fieldForm.name,
    };
    let inputField = createElement("input", inputFielProps);

    fieldContainer.insertAdjacentElement("beforeend", label);
    fieldContainer.insertAdjacentElement("beforeend", inputField);
    return fieldContainer;
}

function createFieldItemSection(field, fieldValue = "") {
    const fieldContainerProps = {
        class: "fieldContainer",
    };
    let fieldContainer = createElement("div", fieldContainerProps);

    const labelProps = { for: field };
    let label = createElement("label", labelProps);
    label.innerText = `${field} :`;

    const inputFielProps = {
        type: "text",
        name: field,
        value: fieldValue,
    };
    let inputField = createElement(
        "input",
        inputFielProps,
        setChangeItem,
        "change"
    );

    fieldContainer.insertAdjacentElement("beforeend", label);
    fieldContainer.insertAdjacentElement("beforeend", inputField);
    return fieldContainer;
}

function createDeleteButton(call) {
    const props = {
        type: "button",
        name: `delete`,
        value: `Borrar elemento`,
        class: "deleteSectionButton leftPanelButton",
    };
    let buttonElement = createElement("input", props, call);
    return buttonElement;
}

function createUpdateButton(call) {
    const props = {
        type: "button",
        name: `update`,
        value: `Actualizar elemento`,
        class: "updateSectionButton leftPanelButton",
    };
    let buttonElement = createElement("input", props, call);
    return buttonElement;
}

function createImageContainer(path) {
    const imageContainerProps = {
        class: "imageContainer",
    };
    let imageContainer = createElement("div", imageContainerProps);

    const imageProps = {
        alt: "imagen",
        src: path,
        class: "imageItem",
        draggable: "false",
    };
    let image = createElement("img", imageProps);

    imageContainer.insertAdjacentElement("afterbegin", image);

    return imageContainer;
}

function createLeftPanelButtonContainer() {
    let leftPanelButtons = createElement("div", {
        class: "fieldContainerButtons",
    });
    leftPanelButtons.insertAdjacentElement(
        "beforeend",
        createDeleteButton(sendDeleteItem)
    );
    leftPanelButtons.insertAdjacentElement(
        "beforeend",
        createUpdateButton(sendUpdateItem)
    );

    return leftPanelButtons;
}

function showTextClickClick(x, y, message, color) {
    var textClick = document.createElement("div");
    textClick.classList.add("textClick");
    document.body.insertAdjacentElement("beforeend", textClick);
    textClick.style.backgroundColor = color.background;
    textClick.style.Color = color.color;
    textClick.innerText = message;
    textClick.style.left = x + "px";
    textClick.style.top = -40 + y + window.scrollY + "px";

    setTimeout(function () {
        textClick.remove();
    }, 2000);
}

connectNavBarItems();
