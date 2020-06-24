alicia_silverstone = User.create(email: "alicia@alicia.com", name: "Alicia Silverstone", image_url: "https://media3.s-nbcnews.com/j/newscms/2015_24/625531/clueless-movie-cast-today-150611-02_93df08bb297c907c79b11f95ec90c856.fit-760w.jpg", bio: "I'm a vegan who starred in Clueless", password: "password")

pierre = User.create(email: "frenchvegan@frenchvegan.com", name: "Pierre", image_url: "https://media.gettyimages.com/photos/portrait-of-a-french-chef-with-a-pot-picture-idAA006610", bio: "I make great traditional French recipes but turn it vegan.", password: "password")


Recipe.create(title: "Vegan Tarte Tatin", image_url: "https://holycowvegan.net/wp-content/uploads/2008/10/vegan-tarte-tatin-18-680x970.jpg", ingredients: "12 oz crimini mushrooms (sliced. Use a mix of shiitake and crimini if possible or just either one), 1/2 cup dry, sliced shiitake mushrooms (Optional. If using, soak in 2 cups water to reconstitute, then drained. Reserve the stock), 2 tsp thyme (divided), 1 tsp sage", instructions: "In a bowl, place the crimini mushrooms and the reconstituted dry mushrooms, if using. Add the sage, 1 tsp thyme, salt and ground black pepper to taste and the flour. Mix well to coat the mushrooms. It's okay if you have some dry flour remaining at the bottom of the bowl, it will form a nice roux to thicken the stew.
Heat 1 tbsp oil in a saucepan large enough to cook the stew in. Add the mushrooms along with any remaining flour and cook, stirring frequently, over medium-high heat until the mushrooms brown. Scrape the bottom of the pan if the flour sticks. The mushrooms should express enough moisture for you to do this easily enough, but it's okay if some brown bits remain stuck, they will add more flavor to the stew. Remove the mushrooms to a plate and set aside.", user_id: pierre.id)

Recipe.create(title: "Roasted Chickpea Ratatouille", image_url: "https://holycowvegan.net/wp-content/uploads/2008/10/vegan-tarte-tatin-18-680x970.jpg", ingredients: "1 small eggplant (about 1.5 cups, cut into 1-inch cubes)
2 roma tomatoes, cut into 1 inch wedges
2 cups chopped zucchini/yellow squash
½ medium yellow onion, sliced into strips
½ cup canned chickpeas, drained & rinsed
1-2 tablespoons olive oil
1 teaspoon dried oregano
1 teaspoon white or red wine vinegar
2 cloves garlic, minced
a few pinches of red pepper flakes
a few leaves of basil, sliced
(optional): cooked millet or crusty bread on the side", instructions: "Preheat oven to 425.
Arrange the eggplant, tomatoes, squash, onions and chickpeas on a baking sheet (it’s ok if it’s a little crowded). Drizzle with olive oil, salt, pepper and oregano. Toss to coat, then bake for 25-30 minutes or until lightly golden brown.
Remove from oven. (Still on the baking sheet), drizzle the vinegar over the veggies and toss them with the minced garlic and a few pinches of red pepper flakes. Bake 5-10 minutes longer (or broil 1-2 minutes)… until the veggies are golden brown on the edges but still have somewhat of a bite (you don’t want them completely mushy).
Remove from the oven and toss with sliced basil. Taste and adjust seasonings. Drizzle with a little bit more olive oil, if you like. Serve with a grain (or protein) of your choice (millet is pictured).", user_id: pierre.id)
