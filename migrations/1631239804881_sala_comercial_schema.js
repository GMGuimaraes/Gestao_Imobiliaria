'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class SalaComercialSchema extends Schema {
  up () {
    this.create('sala_comercials', (table) => {
      table.increments()
      table.integer('id_sala_comercial').primary().unsigned().notNullable().unique()
      table.float('area_sala_comercial').unsigned().notNullable()
      table.integer('qtde_banheiro_sala_comercial').unsigned().notNullable()
      table.integer('qtde_comodos_sala_comercial').unsigned().notNullable()
      table.integer('id_imovel_cat_FK').unsigned().notNullable().references('id').inTable('imovel_schema')
      table.timestamps()
    })
  }

  down () {
    this.drop('sala_comercials')
  }
}

module.exports = SalaComercialSchema
