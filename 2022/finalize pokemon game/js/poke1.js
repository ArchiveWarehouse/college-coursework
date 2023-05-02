

// pokedex
const pokedex = document.getElementById('pokedex');
const pokecCache = {};
const fetchPokemon = async () => {
	const url = `https://pokeapi.co/api/v2/pokemon?limit=905`;
	const res = await fetch(url);
	const data = await res.json();
	const pokemon = data.results.map((result, index) => {
		const paddedIndex = ('00' + (index + 1)).slice(-3);
		const image = `https://assets.pokemon.com/assets/cms2/img/pokedex/full/${paddedIndex}.png`;
		return {
			...result,
			id: index + 1,
			paddedIndex: paddedIndex,
			image: image,
		};
	});
	displayPokemon(pokemon);
};
const displayPokemon = (pokemon) => {
	const pokemonHTMLString = pokemon
		.map(
			(pokeman) =>
				`
    <li class="card" onclick="selectPokemon(${pokeman.id})">
        <img class="card-image" src="${pokeman.image}"/>
        <h2 class="card-title">${pokeman.id}. ${pokeman.name}</h2>
    </li>
    `
		)
		.join('');
	pokedex.innerHTML = pokemonHTMLString;
};
const selectPokemon = async (id) => {
	if (!pokecCache[id]) {
		const url = `https://pokeapi.co/api/v2/pokemon/${id}`;
		const res = await fetch(url);
		const pokeman = await res.json();
		pokecCache[id] = pokeman;
	} else {
		displayPopup(pokecCache[id]);
	}
};
const displayPopup = (pokeman) => {
	const type = pokeman.types.map((type) => type.type.name).join(', ');
	const paddedIndex = ('00' + pokeman.id).slice(-3);
	const image = `https://assets.pokemon.com/assets/cms2/img/pokedex/full/${paddedIndex}.png`;
	const htmlString = `
	<div class="popup">
		<button id="closeBtn" onclick="closePopup()
		">X</button>
		<div class="card">
        	<img class="card-image" src="${image}"/>
        	<h2 class="card-title">${pokeman.id}. ${pokeman.name}</h2>
			<p><small>Height: </small>${pokeman.height} inches
			 | <small>Weight: </small>${pokeman.weight} lbs
			 | <small>Type: </small>${type}
    	</div>
	</div>`;
	pokedex.innerHTML = htmlString + pokedex.innerHTML;
	console.log(htmlString);
};
const closePopup = () => {
	const popup = document.querySelector('.popup');
	popup.parentElement.removeChild(popup);
};
fetchPokemon();


// totop
$('a[href=#top]').click(function () {
    $('body,html').animate({
        scrollTop: 0
    }, 600);
    return false;
});

$(window).scroll(function () {
    if ($(this).scrollTop() > 50) {
        $('.totop a').fadeIn();
    } else {
        $('.totop a').fadeOut();
    }
});


