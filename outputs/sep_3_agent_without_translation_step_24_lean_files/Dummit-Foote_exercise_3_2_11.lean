import Mathlib

universe u

variable {G : Type u} [Group G]

/-- Relation on G for left cosets modulo a subgroup H: a ~ b iff b⁻¹ * a ∈ H. -/
def leftRel (H : Subgroup G) : G → G → Prop := fun a b => (b⁻¹ * a) ∈ H

/-- Relation on K (a subgroup) for left cosets of H inside K. -/
def leftRelOn (H K : Subgroup G) : K → K → Prop := fun a b => ((b : G)⁻¹ * (a : G)) ∈ H

/-- The setoid of left cosets of H in G. (Equivalence proof omitted.) -/
def leftSetoid (H : Subgroup G) : Setoid G := Setoid.mk (leftRel H) (by sorry)

/-- The setoid of left cosets of H in K. (Equivalence proof omitted.) -/
def leftSetoidOn (H K : Subgroup G) : Setoid K := Setoid.mk (leftRelOn H K) (by sorry)

/-- The type of left cosets of H in G. -/
def leftCosets (H : Subgroup G) : Type u := Quotient (leftSetoid H)

/-- The type of left cosets of H in K. -/
def leftCosetsIn (H K : Subgroup G) : Type u := Quotient (leftSetoidOn H K)

open Cardinal

/-- If H ≤ K ≤ G then |G : H| = |G : K| * |K : H|, where indices are cardinals. -/
theorem index_mul_cardinal {H K : Subgroup G} (hHK : H ≤ K) :
  Cardinal.mk (leftCosets H) = Cardinal.mk (leftCosets K) * Cardinal.mk (leftCosetsIn H K) := by sorry
