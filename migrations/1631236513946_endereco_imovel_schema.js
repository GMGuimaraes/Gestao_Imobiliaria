'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class EnderecoImovelSchema extends Schema {
  up () {
    this.create('endereco_imovels', (table) => {
      table.increments()
      table.integer('id_endereco_imovel').primary().unsigned().notNullable().unique()
      table.integer('id_imovel').unsigned().notNullable().references('id').inTable('imovel_schema')
      table.string('cep_imovel', 9).notNullable()
      table.integer('num_imovel').notNullable()
      table.string('logradouro_imovel', 50).notNullable()
      table.string('complemento', 50).nullable()
      table.string('bairro_imovel', 25).notNullable()
      table.string('cidade_imovel', 50).notNullable()
      table.string('estado_imovel', 50).notNullable()
      table.timestamps()
    })
  }

  down () {
    this.drop('endereco_imovels')
  }
}

module.exports = EnderecoImovelSchema
