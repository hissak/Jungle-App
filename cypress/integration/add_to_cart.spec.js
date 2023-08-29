describe('Home Page', () => {
  beforeEach(() => {
    cy.visit('/')
  })
  it('Add to cart', () => {
    cy.get('.products article').first().find('button').click({force: true})
    cy.get('.nav-link').contains('My Cart (1)').should("be.visible")
  })
})  