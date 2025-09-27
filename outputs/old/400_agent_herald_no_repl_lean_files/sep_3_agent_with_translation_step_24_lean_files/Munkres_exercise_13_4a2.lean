import Mathlib

open Set

/-- A simple predicate saying a collection of subsets is a topology. -/
def is_topology_on {X : Type _} (T : Set (Set X)) : Prop :=
  (∅ : Set X) ∈ T ∧ (Set.univ : Set X) ∈ T ∧
    (∀ s t, s ∈ T → t ∈ T → s ∩ t ∈ T) ∧
    (∀ S : Set (Set X), (∀ s ∈ S, s ∈ T) → (⋃₀ S) ∈ T)

/-- A concrete three-point type. -/
inductive X : Type
| a | b | c
open X

/-- Some subsets of X. -/
def s_a : Set X := {a}
def s_b : Set X := {b}
def s_c : Set X := {c}
def s_ab : Set X := {a, b}
def s_bc : Set X := {b, c}

/-- Two topologies on X. -/
def T1 : Set (Set X) := { s | s = (∅ : Set X) ∨ s = (Set.univ : Set X) ∨ s = s_a ∨ s = s_ab }

def T2 : Set (Set X) := { s | s = (∅ : Set X) ∨ s = (Set.univ : Set X) ∨ s = s_c ∨ s = s_bc }

/-- The union T1 ∪ T2 contains {a,b} and {b,c} but not {b}, so it is not closed under finite
    intersections; we state this as a theorem (proof omitted). -/
theorem union_of_topologies_not_topology :
  is_topology_on T1 ∧ is_topology_on T2 ∧ s_ab ∈ (T1 ∪ T2) ∧ s_bc ∈ (T1 ∪ T2) ∧ ¬ (s_b ∈ (T1 ∪ T2)) := by
  sorry
