'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class CasaSchema extends Schema {
  up () {
    this.create('casas', (table) => {
      table.increments()
      table.integer('id_casa_imovel').primary().unsigned().notNullable().unique()
      table.integer('qtde_quartos_casa').unsigned().notNullable()
      table.integer('qtde_suites_casa').unsigned().notNullable()
      table.integer('qtde_sala_estar_casa').unsigned().notNullable()
      table.integer('qtde_sala_jantar_casa').unsigned().notNullable()
      table.integer('qtde_vaga_garagem_casa').unsigned().notNullable()
      table.float('area_casa', 10, 2).unsigned().notNullable()
      table.string('armario_embutido_casa', 3).notNullable()
      table.string('descricao_casa', 200).nullable()
      table.integer('id_imovel_cat_FK').unsigned().notNullable().references('id').inTable('imovel_schema')
      table.timestamps()
    })
  }

  down () {
    this.drop('casas')
  }
}

module.exports = CasaSchema
