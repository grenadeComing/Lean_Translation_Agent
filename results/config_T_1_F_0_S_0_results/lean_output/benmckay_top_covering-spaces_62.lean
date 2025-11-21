import Mathlib

/-!
Statement: For a covering map p : X → Y the number n of sheets (which might be ∞)
above an evenly covered open set is constant along any path in Y. More precisely,
if p : X → Y is a covering map, and y₀, y₁ are points of Y joined by a continuous
path, then there exists a bijection between the fibres p^{-1} y₀ and p^{-1} y₁.
In particular, if Y is path connected then all fibres are in bijection, and we say
p is n-to-1.

Theorems are stated below (no proofs):
- an existence of a bijection between fibres along a path;
- the path-connected corollary giving bijections from a fixed fibre to any fibre.
-/

open Function

theorem covering_map.exists_bij_on_fibres_of_path {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  {p : X → Y} (hcov : IsCoveringMap p) {y0 y1 : Y} (γ : Path Y y0 y1) :
  ∃ f : {x : X // p x = y0} → {x : X // p x = y1}, Bijective f := by sorry

theorem covering_map.fibres_bij_of_path_connected {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
  {p : X → Y} (hcov : IsCoveringMap p) [PathConnectedSpace Y] {y0 : Y} :
  ∀ y : Y, ∃ f : {x : X // p x = y0} → {x : X // p x = y}, Bijective f := by sorry
