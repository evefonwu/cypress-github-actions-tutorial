describe("Landing page", () => {
  beforeEach(() => {
    const url = "https://resume.evefonwu.com";
    cy.visit(url);
  });

  it("should display a visitor info section", () => {
    cy.get('[data-cy="visits-info"]').should("be.visible");
  });
});
