import Mathlib

open Set

/-- Counterexample: in R^2, take the two open unit disks centered at (0,0) and (2,0), together
with the point (1,0) joining them. The union S is connected, but its interior is the disjoint
union of the two open disks, hence disconnected. -/

noncomputable section

def disk (c : ℝ × ℝ) (r : ℝ) : Set (ℝ × ℝ) :=
  { x | (x.1 - c.1) ^ 2 + (x.2 - c.2) ^ 2 < r ^ 2 }

def S : Set (ℝ × ℝ) :=
  disk (0, 0) 1 ∪ disk (2, 0) 1 ∪ {(1, 0)}

theorem Pugh_exercise_2_57 : IsConnected S ∧ ¬IsConnected (interior S) := by sorry
