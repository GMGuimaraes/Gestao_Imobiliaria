'use strict'

/** @type {import('@adonisjs/lucid/src/Schema')} */
const Schema = use('Schema')

class CargosImobiliariaSchema extends Schema {
  up () {
    this.create('cargos_imobiliarias', (table) => {
      table.increments()
      table.integer('id_cargos_imobiliaria').primary().unsigned().notNullable().unique()
      table.string('nome_cargos_imobiliaria',30).notNullable()
      table.float('salario_base_cargos_imobiliaria', 30, 2).unsigned().notNullable()
      table.timestamps()
    })
  }

  down () {
    this.drop('cargos_imobiliarias')
  }
}

module.exports = CargosImobiliariaSchema
