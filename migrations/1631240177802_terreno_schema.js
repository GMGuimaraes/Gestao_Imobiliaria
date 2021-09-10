'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class TerrenoSchema extends Schema {
  up () {
    this.create('terrenos', (table) => {
      table.increments()
      table.integer('id_terreno').primary().unsigned().notNullable().unique()
      table.float('area_terreno', 10, 2).unsigned().notNullable()
      table.float('largura_terreno', 10, 2).unsigned().notNullable()
      table.float('comprimento_terreno', 10, 2).unsigned().notNullable()
      table.string('aclive_terreno', 3).notNullable()
      table.integer('id_imovel_cat_FK').unsigned().notNullable().references('id').inTable('imovel_schema')
      table.timestamps()
    })
  }

  down () {
    this.drop('terrenos')
  }
}

module.exports = TerrenoSchema
