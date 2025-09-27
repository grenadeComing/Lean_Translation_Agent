import Mathlib

inductive Three : Type
| a | b | c

open Three Set

def is_topology (X : Type) (T : Set (Set X)) : Prop :=
  (∅ : Set X) ∈ T ∧ (univ : Set X) ∈ T ∧
  (∀ U V : Set X, U ∈ T → V ∈ T → (U ∩ V) ∈ T) ∧
  (∀ (ι : Type) (f : ι → Set X), (∀ i, f i ∈ T) → (⋃ i, f i) ∈ T)

open Set

def X := Three

def A : Set X := {a}

def AB : Set X := {a, b}

def C : Set X := {c}

def BC : Set X := {b, c}

def T1 : Set (Set X) := {∅, A, AB, (univ : Set X)}

def T2 : Set (Set X) := {∅, C, BC, (univ : Set X)}

theorem Munkres_exercise_13_4a2 :
  ∃ T1' T2' : Set (Set X), is_topology X T1' ∧ is_topology X T2' ∧ ¬ is_topology X (T1' ∪ T2') :=
  by sorry
