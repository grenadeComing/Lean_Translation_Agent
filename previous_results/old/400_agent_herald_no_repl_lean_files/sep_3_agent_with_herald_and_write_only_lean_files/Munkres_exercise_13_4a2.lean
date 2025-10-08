import Mathlib

/-- A basic predicate saying a collection of subsets is a topology on X. -/
def is_topology (X : Type) (T : Set (Set X)) : Prop :=
  (∅ : Set X) ∈ T ∧ (univ : Set X) ∈ T ∧
  (∀ 𝓐 : Set (Set X), 𝓐 ⊆ T → ⋃₀ 𝓐 ∈ T) ∧
  (∀ U V : Set X, U ∈ T → V ∈ T → U ∩ V ∈ T)

/-- Concrete counterexample on a three-point set.  Let T1 = {∅, univ, {0}} and
    T2 = {∅, univ, {1}}.  Each is a topology on Fin 3, but their union is not
    closed under unions: {0} ∪ {1} = {0,1} is not in T1 ∪ T2. -/
def T1 : Set (Set (Fin 3)) := ({(∅ : Set (Fin 3)), (univ : Set (Fin 3)), ({0} : Set (Fin 3))} : Set (Set (Fin 3)))

def T2 : Set (Set (Fin 3)) := ({(∅ : Set (Fin 3)), (univ : Set (Fin 3)), ({1} : Set (Fin 3))} : Set (Set (Fin 3)))

theorem union_of_topologies_need_not_be_topology :
  is_topology (Fin 3) T1 ∧ is_topology (Fin 3) T2 ∧ ¬ is_topology (Fin 3) (T1 ∪ T2) := by sorry
