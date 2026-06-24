using System;
using System.Drawing;
using System.Windows.Forms;

namespace App.Ui
{
    // The main window, built entirely in code (no designer, no .resx).
    public sealed class MainForm : Form
    {
        public MainForm()
        {
            this.Text = "App";
            this.ClientSize = new Size(360, 180);

            Label label = new Label();
            label.Text = "hello";
            label.AutoSize = true;
            label.Location = new Point(20, 20);
            this.Controls.Add(label);
        }
    }
}