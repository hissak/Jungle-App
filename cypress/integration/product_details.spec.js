describe('Home Page', () => {
  beforeEach(() => {
    cy.visit('/')
  })
  it("should click on the first product", () => {
    cy.get(".products article").first().click();
  })
  it("should click on the second product", () => {
    cy.get(".products article").eq(1).click();
  })
})