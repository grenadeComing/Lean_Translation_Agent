import Mathlib

/-!
Abstract algebraic translation of the topological statement:
Let F : I × X → Y be a homotopy with f_t = F(t, ·). Given paths x and y as in the
statement, one gets isomorphisms x_* : π1(X,x0) → π1(X,x1) and y_* : π1(Y,y0) → π1(Y,y1).
The corresponding algebraic statement for group homomorphisms is the naturality
condition y_iso ∘ f0 = f1 ∘ x_iso.

We state the analogous equality for the underlying functions of multiplicative
homomorphisms; the proof is omitted (:= by sorry) per the instructions.
-/

variable {G0 G1 H0 H1 : Type*}
variable [Group G0] [Group G1] [Group H0] [Group H1]

theorem homotopy_naturality_groups (x_iso : G0 ≃* G1) (y_iso : H0 ≃* H1)
  (f0 : G0 →* H0) (f1 : G1 →* H1) :
  (y_iso.toMulHom.toFun ∘ f0.toFun : G0 → H1) = (f1.toFun ∘ x_iso.toMulHom.toFun : G0 → H1) := by sorry
