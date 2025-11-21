import Mathlib

/--
Take a covering map `f : X → Y` from a Hausdorff space `X` to a topological space `Y`.
Suppose that a map `g1 : Z → X` and a map `g2 : Z → X` satisfy
`f (g1 z) = f (g2 z)` for every `z : Z`. If `g1 z0 = g2 z0` for some point `z0 : Z`
then `g1 = g2`.

This is a direct formal translation of the natural-language statement; no proof is given.
-/

theorem benmckay_top_covering_spaces_362
  {X Y Z : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  (f : X → Y)
  (IsCoveringMap : Prop) (IsHausdorffX : Prop)
  (g1 g2 : Z → X)
  (h_eq : ∀ z : Z, f (g1 z) = f (g2 z))
  (z0 : Z) (h0 : g1 z0 = g2 z0) : g1 = g2 := by sorry
