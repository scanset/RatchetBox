using System;
using System.Windows.Forms;

namespace App
{
    internal static class Program
    {
        [STAThread]
        private static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new GreeterForm());
        }
    }

    public class GreeterForm : Form
    {
        private TextBox textBox;
        private Button button;
        private Label label;

        public GreeterForm()
        {
            this.Text = "Greeter";
            this.Size = new System.Drawing.Size(300, 200);

            textBox = new TextBox();
            textBox.Location = new System.Drawing.Point(10, 10);
            textBox.Size = new System.Drawing.Size(260, 20);
            this.Controls.Add(textBox);

            button = new Button();
            button.Location = new System.Drawing.Point(10, 40);
            button.Size = new System.Drawing.Size(75, 23);
            button.Text = "Greet";
            button.Click += new EventHandler(Button_Click);
            this.Controls.Add(button);

            label = new Label();
            label.Location = new System.Drawing.Point(10, 70);
            label.Size = new System.Drawing.Size(260, 23);
            label.Text = "";
            this.Controls.Add(label);
        }

        private void Button_Click(object sender, EventArgs e)
        {
            string greeting = "Hello, " + textBox.Text;
            label.Text = greeting;
        }
    }
}