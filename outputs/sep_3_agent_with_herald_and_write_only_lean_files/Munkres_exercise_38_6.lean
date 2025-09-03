import Mathlib

/-- Let $X$ be completely regular. Show that $X$ is connected if and only if the Stone-Čech compactification of $X$ is connected. -/
theorem connectedSpace_iff_connectedSpace_StoneCech (X : Type*) [TopologicalSpace X]
    [CompletelyRegularSpace X] : ConnectedSpace X ↔ ConnectedSpace (StoneCech X) := by sorry
