'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class ImovelSchema extends Schema {
  up () {
    this.create('imovels', (table) => {
      table.increments()
      table.integer('id_imovel').primary().unsigned().notNullable().unique().onUpdate('CASCADE')
      table.string('status_imovel', 20).notNullable()
      table.string('imagem_imovel', 50).notNullable()
      table.date('data_construcao').notNullable()
      table.timestamps()
    })
  }

  down () {
    this.drop('imovels')
  }
}

module.exports = ImovelSchema
