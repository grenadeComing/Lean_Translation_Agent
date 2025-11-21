import Mathlib

/--
Abstract algebraic translation of the topological statement:
Given induced homomorphisms (f0)_* : π1(X,x0) → π1(Y,y0) and (f1)_* : π1(X,x1) → π1(Y,y1)
and the isomorphisms x_* : π1(X,x0) ≃* π1(X,x1), y_* : π1(Y,y0) ≃* π1(Y,y1)
defined by path-conjugation, the naturality relation
y_* ∘ (f_0)_* = (f_1)_* ∘ x_* holds as an equality of group homomorphisms.
This theorem records that equality at the level of induced maps between fundamental groups.
-/

theorem benmckay_top_fundamental_groups_243 {Gx0 Gx1 Gy0 Gy1 : Type*}
  [Mul Gx0] [Mul Gx1] [Mul Gy0] [Mul Gy1]
  (f0_star : Gx0 →ₙ* Gy0) (f1_star : Gx1 →ₙ* Gy1)
  (x_star : Gx0 ≃* Gx1) (y_star : Gy0 ≃* Gy1) :
  (y_star.toMulHom).comp f0_star = f1_star.comp x_star.toMulHom := by sorry
