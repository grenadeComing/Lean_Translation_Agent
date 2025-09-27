import Mathlib

variable {G : Type*} [Group G] [Fintype G]

-- We formalize a minimal abstract setup capturing the Sylow uniqueness argument
variable (S : Type*) (conj : G -> S -> S)
variable (IsSylow : ℕ -> S -> Prop)

/-- An abstract notion of normality for elements of S under the conjugation `conj`. -/
def IsNormal' (P : S) : Prop := ∀ g : G, conj g P = P

/-- If P is the unique Sylow p-subgroup (in the abstract sense) and conjugation
preserves the property of being Sylow, then P is normal. -/
theorem unique_sylow_normal {p : ℕ} (P : S)
  (hP : IsSylow p P) (huniq : ∀ Q, IsSylow p Q -> Q = P)
  (hconj : ∀ g (H : S), IsSylow p H -> IsSylow p (conj g H)) :
  IsNormal' S conj P := by sorry
