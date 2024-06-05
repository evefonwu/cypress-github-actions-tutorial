describe("Landing page", () => {
  beforeEach(() => {
    const url = "http://127.0.0.1:5500/index.html";
    cy.visit(url);
  });

  it("should display a visitor info section", () => {
    cy.get('[data-cy="visits-info"]').should("be.visible");
  });
});
