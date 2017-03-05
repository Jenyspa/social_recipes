require 'rails_helper'

feature 'User register recipes' do

  scenario 'successfully' do
    #setup
    recipe = Recipe.new(name: 'Molho Branco', cuisine: 'Italiana',
                        meal_type: 'Molho', people: '4', cooking_time: '15',
                        difficult_level: 'Fácil', ingredients: '50gr Farinha de trigo,
                        50gr Manteiga, 500ml Leite Integral, Pimenta do Reino, Noz moscada,
                        Sal', step_by_step: '1.Derreta a manteiga, adicione a Farinha
                        e mexa por alguns minutos até a mistura ficar dourada.
                        2.Retire do fogo, adicione o leite e mexa vigorosamente
                        até dissolver toda a farinha. 3.Volte para o fogo baixo,
                        tempere com sal e noz-moscada a gosto e cozinhe até
                        o molho ficar encorpado, se necessário adicione mais leite')
    #execução

    visit new_recipe_path

    fill_in 'Nome da Receita',      with: recipe.name
    fill_in 'Cuisine',              with: recipe.cuisine
    fill_in 'Tipo de Comida',       with: recipe.meal_type
    fill_in 'Quantidade de Pessoas',with: recipe.people
    fill_in 'Tempo de Preparo',     with: recipe.cooking_time
    fill_in 'Nível de Dificuldade', with: recipe.difficulty_level
    fill_in 'ingredientes',         with: recipe.ingredients
    fill_in 'Passo a Passo',        with: recipe.step_by_step

    click_on 'Criar Receita'

    #expectativa
    'Receita Criada'
    expect(page).to have_css('h1', text: recipe.name)
    expect(page).to have_content(recipe.cuisine)
    expect(page).to have_content(recipe.meal_type)
    expect(page).to have_content(recipe.people)
    expect(page).to have_content(recipe.cooking_time)
    expect(page).to have_content(recipe.difficulty_level)
    expect(page).to have_content(recipe.ingredients)
    expect(page).to have_content(recipe.step_by_step)

    'Voltar'

  end

end
