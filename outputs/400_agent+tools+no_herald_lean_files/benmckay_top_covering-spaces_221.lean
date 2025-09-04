import Mathlib

/-!
# Existence of points with compact stabilizer and a compact transversal

This file states the following informal result:

If a group Γ acts on a topological space X and the orbit space X/Γ (with the quotient topology)
is compact, then every orbit Γ·x contains a point whose stabilizer is compact, and moreover
there exists a compact subset K ⊆ X meeting every Γ-orbit.

We formalize this using an explicit quotient map `q : X → Y` which is assumed to identify
points exactly when they lie in the same orbit, and we assume `Y` is compact.
The proof is omitted (`by sorry`).
-/

open Set

variable {Γ : Type _} {X : Type _} {Y : Type _}

variable [Group Γ] [TopologicalSpace Γ]
variable [TopologicalSpace X] [TopologicalSpace Y]
variable [MulAction Γ X]

/-- Statement: if q : X → Y is the orbit map identifying points exactly when they are in the
same Γ-orbit, q is continuous and surjective, and Y is compact, then every orbit contains a
point with compact stabilizer, and there is a compact set meeting every orbit. -/
theorem exists_point_with_compact_stabilizer_and_compact_transversal
  (q : X → Y)
  (hq_cont : Continuous q)
  (hq_surj : ∀ y : Y, ∃ x : X, q x = y)
  (hq_iff : ∀ x y : X, q x = q y ↔ ∃ g : Γ, g • x = y)
  (hY_comp : IsCompact (univ : Set Y)) :
  (∀ x0 : X, ∃ x : X, (∃ g : Γ, x = g • x0) ∧ IsCompact ({γ : Γ | γ • x = x}))
  ∧ ∃ K : Set X, IsCompact K ∧ ∀ x0 : X, ∃ y : X, y ∈ K ∧ ∃ g : Γ, g • x0 = y :=
by sorry
