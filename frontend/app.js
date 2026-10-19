const btnBuscar = document.getElementById('btnBuscar');
const inputNombre = document.getElementById('inputNombre');
const resultado = document.getElementById('resultado');

async function buscarPokemon() {
    const nombre = inputNombre.value.toLowerCase().trim();
    if (!nombre) return;
    resultado.innerHTML = '<p class="mensaje-cargando">Cargando...</p>';

    try {
        const respuesta = await fetch(`https://pokeapi.co/api/v2/pokemon/${nombre}`);
        if (!respuesta.ok) {
        if (respuesta.status === 404) {
            throw new Error('El pokémon ingresado no existe.');
        }
        throw new Error(`Error en el servidor (Código: ${respuesta.status})`);
        }

        const datos = await respuesta.json();
        mostrarPokemon(datos);

    } catch (error) {
        resultado.innerHTML = `<p class="mensaje-error">❌ ${error.message}</p>`;
    }
}

btnBuscar.addEventListener('click', buscarPokemon);

inputNombre.addEventListener('keydown', (e) => {
    if (e.key === 'Enter') {
        buscarPokemon();
    }
});
