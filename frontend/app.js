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

function mostrarPokemon(datos) {
  // Conversión 
  const pesoKg = (datos.weight / 10).toFixed(1);
  const alturaM = (datos.height / 10).toFixed(1);

  const tipos = datos.types.map(t => t.type.name).join(', ');


  const imagen = datos.sprites.other?.['official-artwork']?.front_default 
              || datos.sprites.front_default 
              || '';

  resultado.innerHTML = `
    <div class="tarjeta">
      <h2>${datos.name}</h2>
      <img src="${imagen}" alt="Imagen de ${datos.name}">
      <p><strong>Tipos:</strong> ${tipos}</p>
      <p><strong>Peso:</strong> ${pesoKg} kg</p>
      <p><strong>Altura:</strong> ${alturaM} m</p>
    </div>
  `;
}